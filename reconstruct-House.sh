#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

# The frames subdirectory can be specified as the second parameter of the script.
dir=${2:-frames_resized}

cd House

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt -s $dir/frontroom2study -t Disk -s $dir/hall2frontbedroom -t Disk -s $dir/hall2oldkitchen -t Disk -s $dir/mainbedroom2studio -t Disk -s $dir/diningroom2kitchen -t Disk
