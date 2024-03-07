#!/bin/bash
conda create --yes --name mac-mp-pde-solvers python=3.11 numpy scipy matplotlib scikit-learn
source ~/anaconda3/etc/profile.d/conda.sh
CONDA_PATH=$(conda info | grep -i 'base environment' | awk '{print $4}')
source $CONDA_PATH/etc/profile.d/conda.sh
conda activate mac-mp-pde-solvers
conda install pytorch::pytorch torchvision torchaudio -c pytorch -y
pip install torch_geometric
pip install torch-cluster -f https://data.pyg.org/whl/torch-2.2.0+${cpu}.html
conda install -c anaconda h5py -y
pip install -e .