#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g House/global_poses.txt -s House/frames_resized/frontroom2study -t Disk -s House/frames_resized/hall2frontbedroom -t Disk -s House/frames_resized/hall2oldkitchen -t Disk -s House/frames_resized/mainbedroom2studio -t Disk -s House/frames_resized/diningroom2kitchen -t Disk
