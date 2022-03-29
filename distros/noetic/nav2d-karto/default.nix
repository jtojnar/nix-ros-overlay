
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, nav-msgs, nav2d-localizer, nav2d-msgs, roscpp, suitesparse, tbb, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav2d-karto";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/noetic/nav2d_karto/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "a6e7858170e9d813af27e4ec0b818d49ca0cf7c8ee5b05ff5ceee9d9e701190d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nav2d-localizer nav2d-msgs roscpp suitesparse tbb tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graph-based Simultaneous Localization and Mapping module.
    Includes OpenKarto GraphSLAM library by &quot;SRI International&quot;.'';
    license = with lib.licenses; [ "GPL-3.0-only" ];
  };
}