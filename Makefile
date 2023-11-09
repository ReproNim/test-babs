REGISTRY=docker.io
HUBUSER=asmacdo
REPO=centos7-slurm
TAG=23.11.07
                                                                   
FQDN_IMAGE=${REGISTRY}/${HUBUSER}/${REPO}:${TAG}

# 		-e PATH="/babsbin/:${PATH}" \
# 		-v /mnt/DATA/data/asmacdo/test-babs/bin/:/babsbin/ \
# vanilla slurm, conda bound in
slurm:
	podman run  \
		-v /home/asmacdo/miniconda3/:/home/asmacdo/miniconda3/ \
		-h slurmctl --cap-add sys_admin --privileged \
		${FQDN_IMAGE} \
		tail -f # hack to keep it running TODO: update image enrtry point


test:
	PATH=${PWD}/bin:${PATH} which sbatch
	PATH=${PWD}/bin:${PATH} babs-check-setup --project_root /mnt/DATA/data/asmacdo/test-babs/my_BABS_project/ --job-test


test-all:
	babs-check-setup --project_root /mnt/DATA/data/asmacdo/test-babs/my_BABS_project/

cleanup:
	rm -rf my_BABS_project/input_ria/e0d/05fa1-e672-4310-a075-e602fa057104/objects/5b/
	rm -rf my_BABS_project/input_ria/e0d/05fa1-e672-4310-a075-e602fa057104/objects/70/
	rm -rf my_BABS_project/input_ria/e0d/05fa1-e672-4310-a075-e602fa057104/objects/76/7b1b2c6a7549dad7315b70adf3df64b8a5152f
	rm -rf my_BABS_project/input_ria/e0d/05fa1-e672-4310-a075-e602fa057104/objects/ab/
	rm -rf my_BABS_project/input_ria/e0d/05fa1-e672-4310-a075-e602fa057104/objects/b4/

