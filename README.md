This repo is being used to test the [BABS project](https://github.com/PennLINC/babs) by following the [example walkthrough](https://pennlinc-babs.readthedocs.io/en/stable/walkthrough.html) against a [slurm microcluster](https://github.com/giovtorres/docker-centos7-slurm).


```
conda create -n babs -p envs/conda-babs -y python=3.9.16
conda activate $PWD/envs/conda-babs
conda install -c conda-forge -y datalad-container
pip install datalad-osf
export PATH=$PWD/bin:$PATH
```

# TODO: YODA'ify https://pennlinc-babs.readthedocs.io/en/stable/walkthrough.html#step-1-get-prepared
#  -- singularity container is not added via datalad 
