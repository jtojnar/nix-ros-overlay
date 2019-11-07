
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb2400-moveit-plugins, moveit-ros-visualization, moveit-ros-move-group, catkin, moveit-simple-controller-manager, moveit-planners-ompl, robot-state-publisher, abb-irb2400-support, joint-state-publisher, xacro, industrial-robot-simulator }:
buildRosPackage {
  pname = "ros-melodic-abb-irb2400-moveit-config";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/melodic/abb_irb2400_moveit_config/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "cb059c41a63c0ed80fc4cdc039db24a661e627cef5ea0ff97b060896f8fcd8f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-move-group industrial-robot-simulator moveit-ros-visualization joint-state-publisher moveit-simple-controller-manager robot-state-publisher abb-irb2400-support abb-irb2400-moveit-plugins xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt package for the ABB IRB 2400.
    </p>
    <p>
      An automatically generated package with all the configuration and launch
      files for using the ABB IRB 2400 with the MoveIt Motion Planning
      Framework.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}