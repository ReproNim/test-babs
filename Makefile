REGISTRY=docker.io
HUBUSER=asmacdo
REPO=centos7-slurm
TAG=23.11.07
                                                                   
FQDN_IMAGE=${REGISTRY}/${HUBUSER}/${REPO}:${TAG}

# vanilla slurm, conda bound in
run-slurm:
	podman run -it --rm \
		-v /home/asmacdo/miniconda3/:/home/asmacdo/miniconda3/ \
		-h slurmctl --cap-add sys_admin --privileged \
		${FQDN_IMAGE} \
		/bin/bash     
