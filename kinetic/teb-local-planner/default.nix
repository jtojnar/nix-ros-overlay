
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libg2o, tf-conversions, tf, geometry-msgs, message-generation, message-runtime, catkin, nav-msgs, std-msgs, visualization-msgs, roscpp, costmap-2d, pluginlib, cmake-modules, base-local-planner, nav-core, interactive-markers, costmap-converter, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-teb-local-planner";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/kinetic/teb_local_planner/0.6.13-1.tar.gz;
    sha256 = "35aaacc63d949f62783fe5e5cb2a3b70aa6a5687c1a4b0a1b72b35105c014fd0";
  };

  buildInputs = [ costmap-2d pluginlib cmake-modules base-local-planner libg2o nav-core roscpp message-generation nav-msgs interactive-markers costmap-converter dynamic-reconfigure std-msgs tf-conversions visualization-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner libg2o nav-core roscpp nav-msgs interactive-markers costmap-converter dynamic-reconfigure std-msgs tf-conversions visualization-msgs tf message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner package implements a plugin
    to the base_local_planner of the 2D navigation stack.
    The underlying method called Timed Elastic Band locally optimizes
    the robot's trajectory with respect to trajectory execution time,
    separation from obstacles and compliance with kinodynamic constraints at runtime.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
