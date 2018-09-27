#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

# The frames subdirectory can be specified as the second parameter of the script.
dir=${2:-frames_resized}

cd Flat

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt -s $dir/turret2sittingroom -t Disk -s $dir/study2sittingroom -t Disk -s $dir/kitchen2study -t Disk -s $dir/bathroom2study -t Disk
