#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g Flat/global_poses.txt -s Flat/frames_resized/turret2sittingroom -t Disk -s Flat/frames_resized/study2sittingroom -t Disk -s Flat/frames_resized/kitchen2study -t Disk -s Flat/frames_resized/bathroom2study -t Disk
