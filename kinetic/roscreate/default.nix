
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-roscreate";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/roscreate/1.14.4-0.tar.gz;
    sha256 = "d14c4028b4c41004e1da705da1a52bb99a59b149d8d8cecbe3c2e1f284155453";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    #license = lib.licenses.BSD;
  };
}