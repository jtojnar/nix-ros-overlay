
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-r1000ia-support";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_r1000ia_support/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "fc341a27a94e7ab1c97ae95c9d8d3ecbffb420c8aee5b3ff2ef250644bf1078e";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc R-1000iA (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc R-1000iA manipulators. This currently includes the /80F only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>R-1000iA/80F - &quot;flange: standard flange&quot;, &quot;motion range: standard type&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot R-1000iA Mechanical Unit Operator's Manual</em>
      version <em>B-83004EN/03</em>. All urdfs are based on the default motion
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
