#!/bin/bash
source /home/vadzim/miniconda3/etc/profile.d/conda.sh
conda create -n uni_rl -y
conda activate uni_rl
conda install notebook -y
git clone https://github.com/openai/universe.git
cd universe
pip install -e .
pip install gym==0.9.5
conda install python==3.9.12 -y
cd ../gym-examples/
# conda install ipykernel
# ipython kernel install --name my_env --user
jupyter notebook
