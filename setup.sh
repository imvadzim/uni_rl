#!/bin/bash
source /home/vadzim/miniconda3/etc/profile.d/conda.sh
conda create -n uni_rl -y
conda activate uni_rl
pip install git+https://github.com/jupyter/notebook.git@4.4.0
git clone https://github.com/openai/universe.git
cd universe
pip install -e .
pip install gym==0.9.5
cd ../gym-examples/
# conda install ipykernel
# ipython kernel install --name my_env --user
jupyter notebook
