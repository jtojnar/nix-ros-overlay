
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-foxy-tracetools-launch";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/-/archive/release/foxy/tracetools_launch/1.0.5-2/ros2_tracing-release-release-foxy-tracetools_launch-1.0.5-2.tar.gz";
    name = "ros2_tracing-release-release-foxy-tracetools_launch-1.0.5-2.tar.gz";
    sha256 = "7789d923e675d776aea16b103bf20e4bb8ca38534ac3f0712b59985e7190dfee";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = ''Launch integration for tracing.'';
    license = with lib.licenses; [ asl20 ];
  };
}
