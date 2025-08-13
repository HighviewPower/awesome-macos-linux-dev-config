#!/bin/bash
set -e
HOMEBREW_PREFIX="$(brew --prefix)"
micromamba shell init -s zsh # 
$HOMEBREW_PREFIX/bin/micromamba shell init -s zsh -r ~/micromamba # this is required - see https://formulae.brew.sh/formula/micromamba
$HOMEBREW_PREFIX/bin/micromamba install conda -n base -c conda-forge -y # this is to make conda executable being available by default
echo -e "channels:\n  - conda-forge\nchannel_priority: strict" > ~/.condarc # this is to make sure that when we write `conda install ` it will install from conda-forge by default
