
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, pluginlib, pkg-config, tinyxml2-vendor, qt5, qt-gui, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-qt-gui-cpp";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui_cpp/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "0ec9a0be0a8a8705cd6bd8d2b0b8c018b204ecd537510479f37a8f497cbd84c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib qt5.qtbase pkg-config tinyxml2-vendor python-qt-binding ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ tinyxml2-vendor qt-gui pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}