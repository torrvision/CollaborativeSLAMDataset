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
  exit
fi

# The frames subdirectory can be specified as the second parameter of the script.
dir=${2:-frames_resized}

# The location of spaintgui can be specified as the third parameter of the script.
spaintgui=${3:-/c/spaint/build/bin/apps/spaintgui/spaintgui}

# Change to the subset directory.
cd $1

# Determine which sequences to use, and in what order.
if [ -f global_sequences.txt ]
then
  sequences=`cat global_sequences.txt`
else
  sequences=`ls $dir`
fi

# Construct the command line.
args="--relocaliserType=none --subwindowConfigurationIndex=3 -g global_poses.txt "

for f in $sequences
do
  echo $f
  args="$args -s $dir/$f -t Disk "
done

# Run the application.
$spaintgui $args
