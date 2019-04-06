
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-localizer";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_localizer/0.3.2-0.tar.gz;
    sha256 = "2356fa55caad20d964941c691329ab0b8d1487b9d11ff514bdcc4fca3af7e70d";
  };

  propagatedBuildInputs = [ nav-msgs geometry-msgs sensor-msgs tf roscpp ];
  nativeBuildInputs = [ nav-msgs catkin geometry-msgs sensor-msgs tf roscpp ];

  meta = {
    description = ''Wrapper around Particle Filter implementation.
    The SelfLocalizer can be used as library or as a ros-node.'';
    #license = lib.licenses.GPLv3;
  };
}