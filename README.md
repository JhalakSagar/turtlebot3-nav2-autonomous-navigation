# Autonomous Navigation with TurtleBot3 and ROS 2 Nav2

## Overview

This project demonstrates autonomous navigation using a TurtleBot3 Burger in Gazebo with ROS 2 Jazzy and the Navigation2 (Nav2) stack.

The robot localizes itself on a map, plans a path to a goal selected in RViz, and navigates through the simulated environment.

## Technology Stack

- Ubuntu 24.04
- ROS 2 Jazzy
- Gazebo Harmonic
- TurtleBot3 Burger
- Navigation2 (Nav2)
- RViz 2

## Prerequisites

Install the required packages:

```bash
sudo apt update
sudo apt install ros-jazzy-ros-gz ros-jazzy-navigation2 ros-jazzy-nav2-bringup ros-jazzy-turtlebot3-gazebo ros-jazzy-turtlebot3-navigation2
```

## Run the Simulation

Open a terminal and launch Gazebo:

```bash
source /opt/ros/jazzy/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
```

Keep this terminal running.

## Launch Navigation2

Open a second terminal in the repository directory:

```bash
./scripts/launch_navigation.sh
```

Wait for Nav2 and RViz to start.

## Navigate to a Goal

1. In RViz, select **2D Pose Estimate** and set the robot's initial pose on the map.
2. Select **Nav2 Goal** and click and drag to choose a destination and final orientation.
3. Observe the planned path in RViz and the robot's movement in Gazebo.

## Configuration

The Nav2 parameters are stored in `config/burger_nav.yaml`.

The configuration uses the standard TurtleBot3 Navigation2 map installed at:

`/opt/ros/jazzy/share/turtlebot3_navigation2/map/map.yaml`

This path assumes a standard ROS 2 Jazzy package installation.

## Repository Structure

- `config/burger_nav.yaml` — Nav2 configuration.
- `scripts/launch_navigation.sh` — Navigation2 launch script.
- `media/` — Demonstration recording (to be added).

## Demo

A screen recording demonstrating the simulation and navigation will be added here.
