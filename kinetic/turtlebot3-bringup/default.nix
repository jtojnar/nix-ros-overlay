
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, sensor-msgs, catkin, turtlebot3-description, turtlebot3-msgs, robot-state-publisher, hls-lfcd-lds-driver, std-msgs, diagnostic-msgs, turtlebot3-teleop, roscpp, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-bringup";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_bringup/1.2.0-0.tar.gz;
    sha256 = "a3df5dcf89e39b884a636bbd4dd912cfa2db45bf34f5b934c61c859cce8f15a3";
  };

  propagatedBuildInputs = [ rosserial-python sensor-msgs turtlebot3-description turtlebot3-msgs robot-state-publisher hls-lfcd-lds-driver std-msgs diagnostic-msgs turtlebot3-teleop roscpp joint-state-publisher ];
  nativeBuildInputs = [ catkin std-msgs diagnostic-msgs sensor-msgs roscpp turtlebot3-msgs ];

  meta = {
    description = ''roslaunch scripts for starting the TurtleBot3'';
    #license = lib.licenses.Apache 2.0;
  };
}