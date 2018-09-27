#! /bin/bash -e

# The location of spaintgui can be specified as the first parameter of the script.
spaintgui=${1:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

# The frames subdirectory can be specified as the second parameter of the script.
dir=${2:-frames_resized}

cd Priory

$spaintgui --relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt -s $dir/bath2office -t Disk -s $dir/bed2office -t Disk -s $dir/dining2guest -t Disk -s $dir/guest2bath -t Disk -s $dir/kitchen2dining -t Disk -s $dir/living2dining -t Disk
