
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp }:
buildRosPackage {
  pname = "ros-foxy-maliput";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput-release/archive/release/foxy/maliput/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "dff3f91cbea3f95d04092096aba2912d87ca4a835c4ead1c51f0475adb43953b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}