#!/usr/bin/env bash
set -e

source /opt/ros/jazzy/setup.bash
export TURTLEBOT3_MODEL=burger

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ros2 launch turtlebot3_navigation2 navigation2.launch.py \
  use_sim_time:=True \
  map:=/opt/ros/jazzy/share/turtlebot3_navigation2/map/map.yaml \
  params_file:="${PROJECT_DIR}/config/burger_nav.yaml" \
  use_composition:=False
