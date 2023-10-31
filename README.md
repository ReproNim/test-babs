conda create -n babs -p envs/conda-babs -y python=3.9.16
conda activate $PWD/envs/conda-babs
conda install -c conda-forge -y datalad-container
pip install datalad-osf
export PATH=$PWD/bin:$PATH

# TODO: YODA'ify https://pennlinc-babs.readthedocs.io/en/stable/walkthrough.html#step-1-get-prepared
#  -- singularity container is not added via datalad 
