
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, launch, launch-ros, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, rviz2, ur-description, urdf, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-moveit-config";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_moveit_config/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "110665b9a12576963fdfbd51e99717e945353e078a02285aca596c91f5dbf625";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch launch-ros moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-servo moveit-simple-controller-manager rviz2 ur-description urdf warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''An example package with MoveIt2 configurations for UR robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}