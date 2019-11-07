
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, ament-copyright, tracetools-read }:
buildRosPackage {
  pname = "ros-dashing-tracetools-analysis";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/tracetools_analysis-release/repository/archive.tar.gz?ref=release/dashing/tracetools_analysis/0.2.1-1";
    name = "archive.tar.gz";
    sha256 = "9136f5999555452ed1960996a6d725c3859665d907cc03568b882f97aa02c53c";
  };

  buildType = "ament_python";
  buildInputs = [ tracetools-read ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}