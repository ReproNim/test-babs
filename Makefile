# TODO: add reason why custom container here
REGISTRY=docker.io
HUBUSER=asmacdo
REPO=centos7-slurm
TAG=23.11.07
                                                                   
FQDN_IMAGE=${REGISTRY}/${HUBUSER}/${REPO}:${TAG}

# vanilla slurm, conda bound in
run-slurm:
	podman run -it --rm \
		-v /home/asmacdo/miniconda3/:/home/asmacdo/miniconda3/ \
		-v $${PWD}:$${PWD} \
		-e "UID=$$(id -u)" \
		-e "GID=$$(id -g)" \
		-e "USER=$$USER" \
		-h slurmctl --cap-add sys_admin --privileged \
	        --name slurm \
		${FQDN_IMAGE} \
		/bin/bash -c "groupadd --gid $$(id -u) $$USER && useradd --uid $$(id -u) --gid $$(id -u) $$USER && bash"
