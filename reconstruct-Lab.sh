#! /bin/bash -e

# The frames subdirectory can be specified as the first parameter of the script.
dir=${1:-frames_resized}

# The location of spaintgui can be specified as the second parameter of the script.
spaintgui=${2:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

cd Lab

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt -s $dir/atrium -t Disk -s $dir/firstfloor -t Disk -s $dir/groundfloor -t Disk -s $dir/secondfloor -t Disk
