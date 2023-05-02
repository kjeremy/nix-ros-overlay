
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dingo-msgs";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_msgs/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "7ab839f3eed5463e193c1777a2c90c089552bbeb5939d660291e78b4d7e070b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Dingo, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
