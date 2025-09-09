#!/bin/bash
# Fetch baseline algorithms referenced in the NeuPAN paper.
# Clones available public repositories into the baselines/ directory.
set -e

mkdir -p baselines
cd baselines

# Clone TEB local planner (ROS-based)
if [ ! -d teb_local_planner ]; then
  git clone https://github.com/rst-tu-dortmund/teb_local_planner.git
fi

# Clone AEMCARL repository
if [ ! -d AEMCARL ]; then
  git clone https://github.com/SJWang2015/AEMCARL.git
fi

# TODO: add repositories for RDA, Falco, OBCA, STT and others when available.
