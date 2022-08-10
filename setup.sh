#!/bin/bash
source /home/vadzim/miniconda3/etc/profile.d/conda.sh
conda create -n uni_rl -y
conda activate uni_rl
conda install -c conda-forge notebook
# python 3.6.3
# conda install python==3.5.4 -y
pip install urllib3
git clone https://github.com/openai/universe.git
cd universe
pip install -e .
pip install gym==0.9.5
cd ../../gym-examples/
# conda install ipykernel -y
# ipython kernel install --name my_env --user
jupyter notebook
