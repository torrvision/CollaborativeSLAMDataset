#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

# The frames subdirectory can be specified as the second parameter of the script.
dir=${2:-frames_resized}

cd Lab

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt -s $dir/atrium -t Disk -s $dir/firstfloor -t Disk -s $dir/groundfloor -t Disk -s $dir/secondfloor -t Disk
