#! /bin/bash -e

mkdir -p zips

FILES='Flat-frames_resized-bathroom2study.zip Flat-frames_resized-kitchen2study.zip Flat-frames_resized-study2sittingroom.zip Flat-frames_resized-turret2sittingroom.zip Flat-meshes.zip House-frames_resized-diningroom2kitchen.zip House-frames_resized-frontroom2study.zip House-frames_resized-hall2frontbedroom.zip House-frames_resized-hall2oldkitchen.zip House-frames_resized-mainbedroom2studio.zip House-meshes.zip Lab-frames_resized-atrium.zip Lab-frames_resized-firstfloor.zip Lab-frames_resized-groundfloor.zip Lab-frames_resized-secondfloor.zip Lab-meshes.zip Priory-frames_resized-bath2office.zip Priory-frames_resized-bed2office.zip Priory-frames_resized-dining2guest.zip Priory-frames_resized-guest2bath.zip Priory-frames_resized-kitchen2dining.zip Priory-frames_resized-living2dining.zip Priory-meshes.zip'

for f in $FILES
do
	if [ ! -f "zips/$f" ]
	then
		echo "Downloading $f..."
		curl -L "http://www.robots.ox.ac.uk/~tvg/projects/CollaborativeSLAM/data/$f" > "zips/$f"

		echo "Unzipping $f..."
		unzip -qq "zips/$f"
	else
		echo "Skipping $f, already downloaded"
	fi
done
