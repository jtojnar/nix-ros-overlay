
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-m710ic-support";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_m710ic_support/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "3838c125dd4494c6aee652eb21ce332a75b237531105e59da2434e91a41a842d";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc M-710iC (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-710iC manipulators. This currently includes the /45M and
      /50 variants.
    </p>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot M-710iC Mechanical Unit Operator's Manual</em>
      version <em>B-82274EN/09</em>. All urdfs are based on the default motion
      and joint velocity limits, unless noted otherwise (ie: no support for
      high speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
