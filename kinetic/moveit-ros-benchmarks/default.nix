
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-ros-warehouse, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-benchmarks";
  version = "0.9.17-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_benchmarks/0.9.17-1.tar.gz;
    sha256 = "447f9b82d349f39208c9e01ec4d9e21e5e31bddfb3ea0532327390871f452329";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-warehouse roscpp pluginlib ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
