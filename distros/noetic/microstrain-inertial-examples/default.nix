
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, microstrain-inertial-driver, rviz, rviz-imu-plugin, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "5c8eb7e277bb6c667d392a0b67467c91b522bb0bc350137deb9d51368d3730a6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ microstrain-inertial-driver rviz rviz-imu-plugin tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Simple examples using the microstrain_inertial_driver for MicroStrain sensors.";
    license = with lib.licenses; [ mit ];
  };
}
