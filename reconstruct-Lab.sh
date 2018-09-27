#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g Lab/global_poses.txt -s Lab/frames_resized/atrium -t Disk -s Lab/frames_resized/firstfloor -t Disk -s Lab/frames_resized/groundfloor -t Disk -s Lab/frames_resized/secondfloor -t Disk
