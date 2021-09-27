
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, rclcpp, tf2, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-foxy-turtle-tf2-cpp";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/foxy/turtle_tf2_cpp/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "95c28fe2c391de9a609a38c038e37f31c03f703e46dfffc8a8a80e7cb9f2a07c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros rclcpp tf2 tf2-ros turtlesim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ asl20 ];
  };
}