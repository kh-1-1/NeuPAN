#!/bin/bash
# Fetch baseline algorithms referenced in the NeuPAN paper.
# Clones available public repositories into the baselines/ directory.

set -e

mkdir -p baselines
cd baselines

clone_repo() {
  repo_url=$1
  dir_name=$2
  if [ ! -d "$dir_name" ]; then
    git clone --depth 1 "$repo_url" "$dir_name"
  else
    echo "$dir_name already exists, skipping"
  fi
}

# Clone TEB local planner (ROS-based)
clone_repo https://github.com/rst-tu-dortmund/teb_local_planner.git teb_local_planner

# Clone AEMCARL repository
clone_repo https://github.com/SJWang2015/AEMCARL.git AEMCARL

# Clone OBCA repository
clone_repo https://github.com/XiaojingGeorgeZhang/OBCA.git OBCA

echo "RDA, Falco, and STT baselines either lack public code or require manual setup."
