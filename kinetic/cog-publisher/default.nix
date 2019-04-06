
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, kdl-parser, tf2-geometry-msgs, sensor-msgs, catkin, tf2-ros, roscpp, tf2, urdf, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cog-publisher";
  version = "1.0.1-r4";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/cog_publisher-release/archive/release/kinetic/cog_publisher/1.0.1-4.tar.gz;
    sha256 = "15304f3b223acf45cbc5c8c5f5aaf16343ec71d15c5457134d2d1abe46dfa781";
  };

  propagatedBuildInputs = [ kdl-conversions kdl-parser tf2-geometry-msgs sensor-msgs roscpp tf2-ros tf2 urdf std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ kdl-conversions kdl-parser tf2-geometry-msgs sensor-msgs catkin roscpp tf2-ros tf2 urdf std-msgs tf geometry-msgs ];

  meta = {
    description = ''The cog_publisher package'';
    #license = lib.licenses.GPLv3;
  };
}