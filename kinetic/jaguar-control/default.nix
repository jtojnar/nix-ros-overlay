
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, robot-localization, rostopic, teleop-twist-joy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-control";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_control/0.1.0-0.tar.gz;
    sha256 = "cd8f8e78719d5963b7f4518b9c5f5beaf5477f981e1a48657189b1e3314f8881";
  };

  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy joint-trajectory-controller robot-localization rostopic teleop-twist-joy ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''DrRobot's Jaguar 4X4 controller configurations'';
    #license = lib.licenses.BSD;
  };
}