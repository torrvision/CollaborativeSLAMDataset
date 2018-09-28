#! /bin/bash -e

# Check that the essential first parameter has been specified.
if [ $# -eq 0 ]
then
  echo "Usage: reconstruct-global.sh <subset> [frames directory] [spaintgui location]"
  exit
fi

if [ ! -d $1 ]
then
  echo "Error: The subset '$1' does not exist"
fi

# The frames subdirectory can be specified as the second parameter of the script.
dir=${2:-frames_resized}

# The location of spaintgui can be specified as the third parameter of the script.
spaintgui=${3:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

cd $1

args="--relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt "

for f in $(ls $dir)
do
  echo $f
  args="$args -s $dir/$f -t Disk "
done

$spaintgui $args
