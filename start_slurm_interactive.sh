#!/bin/sh

set -eu

podman run -it -v $PWD:$PWD --name slurm -h slurmctl --cap-add sys_admin  giovtorres/docker-centos7-slurm:21.08.6
