
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-tf2-tools";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_tools/0.5.20-0.tar.gz;
    sha256 = "e864250cde2e5c28ebf296336a77a1fd44c97c8ea945b1b08e769841bde06b8d";
  };

  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ tf2 catkin tf2-msgs tf2-ros ];

  meta = {
    description = ''tf2_tools'';
    #license = lib.licenses.BSD;
  };
}