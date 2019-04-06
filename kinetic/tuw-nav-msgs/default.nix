
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tuw-geometry-msgs, tf, catkin, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-nav-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_nav_msgs/0.0.11-0.tar.gz;
    sha256 = "47dfddda81934ed6721d21653f0defed39ca80085357918bffe691239b1b8b08";
  };

  propagatedBuildInputs = [ nav-msgs tuw-geometry-msgs message-runtime rospy std-msgs geometry-msgs tf roscpp ];
  nativeBuildInputs = [ tuw-geometry-msgs catkin roscpp nav-msgs message-generation rospy std-msgs tf geometry-msgs ];

  meta = {
    description = ''The tuw_nav_msgs package'';
    #license = lib.licenses.BSD;
  };
}