REGISTRY=docker.io                                                 
HUBUSER=asmacdo                                                    
REPO=centos7-slurm-conda                                           
TAG=0.0.0                                                          
                                                                   
FQDN_IMAGE=${REGISTRY}/${HUBUSER}/${REPO}:${TAG}                   
                                                                   
                                                                   
build-conda-image:                                                 
	podman build -t ${FQDN_IMAGE} .                                  
                                                                   
run-conda-image:                                                   
	podman run -it --rm -v /home/austin/.conda/envs/babs/:/opt/conda/
		-h slurmctl --cap-add sys_admin --privileged \
		${FQDN_IMAGE} \
		/bin/bash                                                      
run-slurm:                                                         
	podman run -it --rm \                                            
		-v /home/austin/devel/sandbox/slurm-micro-babs/bin/conda:/usr/bin/conda
		-v /home/austin/.conda/envs/babs/:/home/austin/.conda/envs/babs
		-h slurmctl --cap-add sys_admin --privileged \                 
		${FQDN_IMAGE} \                                                
		/bin/bash     
