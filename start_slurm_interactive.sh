#!/bin/sh

set -eu

# TODO: make a custom .gitconfig for inside so it only provides user name and email
# as we do in https://github.com/ReproNim/containers/blob/master/scripts/singularity_cmd#L104
podman run -it -v $PWD:$PWD -v $HOME/.gitconfig:/root/.gitconfig --name slurm -h slurmctl --cap-add sys_admin  giovtorres/docker-centos7-slurm:21.08.6
