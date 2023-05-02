
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/generate_parameter_library/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "cc11fda90bd0c111696b1294480f45cb667a4dc88b7f4005272cb636ef77af1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py parameter-traits rclcpp rclcpp-lifecycle rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake generate-parameter-library-py ];

  meta = {
    description = ''CMake to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
