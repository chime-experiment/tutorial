#!/bin/bash

path=$1
venv_name=${2:-"(pipeline")}
venv_path=${3:-"${path}/venv"}
code_path=${4:-"${path}/code"}

requirements="\
    -e git+ssh://git@github.com/radiocosmology/caput.git#egg=caput \
    -e git+ssh://git@github.com/chime-experiment/chimedb.git#egg=chimedb \
    -e git+ssh://git@github.com/chime-experiment/chimedb_di.git#egg=chimedb-data-index \
    -e git+ssh://git@github.com/chime-experiment/chimedb_dataflag.git#egg=chimedb-dataflag \
    -e git+ssh://git@github.com/chime-experiment/chimedb_dataset.git#egg=chimedb-dataset \
    -e git+ssh://git@github.com/chime-experiment/ch_util.git#egg=ch_util \
    -e git+ssh://git@github.com/radiocosmology/cora.git#egg=cora \
    -e git+ssh://git@github.com/radiocosmology/driftscan.git#egg=driftscan \
    -e git+ssh://git@github.com/radiocosmology/draco.git#egg=draco \
    -e git+ssh://git@github.com/chime-experiment/ch_pipeline.git#egg=ch_pipeline"

mkdir $path

# Create the virtual environment
virtualenv --system-site-packages  --prompt=$venv_name $venv_path
source $venv_path/bin/activate

# Install the packages
mkdir $code_path
pip install --use-deprecated=legacy-resolver --src $code_path $requirements
