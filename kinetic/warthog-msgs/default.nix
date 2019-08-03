
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-warthog-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_msgs/0.1.1-1.tar.gz;
    sha256 = "0e5d267589e2e1a8ad6f4e6e31165da1a9cd71a07124e9991d6bda9b1444d729";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Warthog, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
