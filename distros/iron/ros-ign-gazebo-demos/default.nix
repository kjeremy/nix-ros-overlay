
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-iron-ros-ign-gazebo-demos";
  version = "0.254.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_gazebo_demos/0.254.1-1.tar.gz";
    name = "0.254.1-1.tar.gz";
    sha256 = "2db772c66d510dc66ad0a768058ad352af87ed6100cf70c94ff3e131ca3e9a83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz-sim-demos ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shim package to redirect to ros_gz_sim_demos.";
    license = with lib.licenses; [ asl20 ];
  };
}
