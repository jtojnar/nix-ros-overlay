
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, self-test, tf, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, std-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-microstrain-3dmgx2-imu";
  version = "1.5.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/melodic/microstrain_3dmgx2_imu/1.5.12-0.tar.gz;
    sha256 = "9aa8d9be95d5d65abd8cd0512ad5e2e0840843ff3feaeff12de80ef2f6e44780";
  };

  buildInputs = [ std-srvs self-test sensor-msgs roscpp diagnostic-updater message-generation std-msgs tf log4cxx ];
  propagatedBuildInputs = [ std-srvs self-test sensor-msgs roscpp diagnostic-updater message-runtime std-msgs tf log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. Includes 
    a heavily modified standalone driver pulled from the player distribution, 
    and a ROS node.'';
    #license = lib.licenses.LGPL;
  };
}