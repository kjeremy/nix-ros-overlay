
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-controller";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_controller/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "2a993ffc9f651261cdd028f19ae6120332f6dd07fb82cebced9cc9bcde0f2014";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles nav-2d-msgs nav-2d-utils nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller action interface";
    license = with lib.licenses; [ asl20 ];
  };
}
