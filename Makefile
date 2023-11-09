REGISTRY=docker.io
HUBUSER=asmacdo
REPO=centos7-slurm
TAG=23.11.07
                                                                   
FQDN_IMAGE=${REGISTRY}/${HUBUSER}/${REPO}:${TAG}

# vanilla slurm, conda bound in
slurm:
	podman run  \
		-v /home/asmacdo/miniconda3/:/home/asmacdo/miniconda3/ \
		-h slurmctl --cap-add sys_admin --privileged \
		${FQDN_IMAGE} \
		tail -f # hack to keep it running TODO: update image enrtry point
