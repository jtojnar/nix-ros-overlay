
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf2-geometry-msgs, catkin, rcdiscover, tf2-ros, tf2, message-generation, message-runtime, curl, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-hand-eye-calibration-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_hand_eye_calibration_client/2.7.0-1.tar.gz;
    sha256 = "d50b5a327fa70e9be566222647223b8fe7eda9b19e283b48175af2969e31e076";
  };

  buildInputs = [ std-srvs tf2-geometry-msgs rcdiscover tf2-ros tf2 message-generation message-runtime curl dynamic-reconfigure roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs tf2-geometry-msgs rcdiscover tf2-ros tf2 message-generation message-runtime curl dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
