
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, nlohmann_json, python3, python3Packages, tbb_2021_8, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-fields2cover";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/rolling/fields2cover/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "0b3281130cda2430a6c4438bc9469f2d18154280c9b44ab3aa4ae05138c8ea15";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ eigen gdal git gtest nlohmann_json python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
