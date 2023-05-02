
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, libyamlcpp, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rclcpp-components, rmf-api-msgs, rmf-battery, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-task, rmf-task-msgs, rmf-task-ros2, rmf-task-sequence, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-adapter";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_fleet_adapter/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "ddc1eee63aef90003804b4e58150621654fa1c5be1a4dbf10375845682a76e57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen libyamlcpp ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rclcpp-components rmf-api-msgs rmf-battery rmf-building-map-msgs rmf-dispenser-msgs rmf-door-msgs rmf-fleet-msgs rmf-ingestor-msgs rmf-lift-msgs rmf-task rmf-task-msgs rmf-task-ros2 rmf-task-sequence rmf-traffic rmf-traffic-ros2 rmf-utils rmf-websocket std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fleet Adapter package for RMF fleets.'';
    license = with lib.licenses; [ asl20 ];
  };
}
