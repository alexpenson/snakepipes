#!/bin/bash
curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
hash -r
conda config --set always_yes yes --set changeps1 no

conda install --yes -c conda-forge snakemake fuzzywuzzy mock sphinx sphinx-argparse sphinx-rtd-theme
