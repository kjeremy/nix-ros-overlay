
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-nav2-simple-commander";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_simple_commander/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "17f283c500230cd76c721094cbc49c379a8e6b937ce1f64906fccc5397060082";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs geometry-msgs lifecycle-msgs nav2-msgs rclpy ];

  meta = {
    description = "An importable library for writing mobile robot applications in python3";
    license = with lib.licenses; [ asl20 ];
  };
}
