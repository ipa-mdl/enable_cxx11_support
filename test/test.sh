#!/bin/bash -e

rm -rf /tmp/catkin_ws/src
mkdir -p /tmp/catkin_ws/src
ln -s `pwd` /tmp/catkin_ws/src/enable_cxx11_support
ln -s `pwd`/test/src /tmp/catkin_ws/src/others

cd /tmp/catkin_ws/src
git clone https://github.com/ros/catkin.git --depth 1
./catkin/bin/catkin_init_workspace
cd ..
./src/catkin/bin/catkin_make --force-cmake