
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, curl, diagnostic-msgs, fetch-auto-dock-msgs, fetch-driver-msgs, libyamlcpp, mk, nav-msgs, power-msgs, python3, robot-calibration-msgs, robot-controllers, robot-controllers-interface, rosconsole, roscpp, roscpp-serialization, rospack, rostime, sensor-msgs, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-fetch-drivers";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/fetch_drivers/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "d504e7ef63e54745253de09244b81b3fb22b518de815de094924f773893c7647";
  };

  buildType = "catkin";
  buildInputs = [ mk rospack ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost curl diagnostic-msgs fetch-auto-dock-msgs fetch-driver-msgs libyamlcpp nav-msgs power-msgs python3 robot-calibration-msgs robot-controllers robot-controllers-interface rosconsole roscpp roscpp-serialization rostime sensor-msgs urdf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The public fetch_drivers package is a binary only release.

    fetch_drivers contains both the drivers and firmware for the fetch and freight research robots.
    There should be no reason to use these drivers unless you're running on a fetch or a freight research robot.
    This package, is a cmake/make only package which installs the binaries for the drivers and firmware.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
