#! /bin/bash -e

mkdir -p zips

FILES='Flat-frames-bathroom2study.zip Flat-frames-kitchen2study.zip Flat-frames-study2sittingroom.zip Flat-frames-turret2sittingroom.zip House-frames-diningroom2kitchen.zip House-frames-frontroom2study.zip House-frames-hall2frontbedroom.zip House-frames-hall2oldkitchen.zip House-frames-mainbedroom2studio.zip Lab-frames-atrium.zip Lab-frames-firstfloor.zip Lab-frames-groundfloor.zip Lab-frames-secondfloor.zip Priory-frames-bath2office.zip Priory-frames-bed2office.zip Priory-frames-dining2guest.zip Priory-frames-guest2bath.zip Priory-frames-kitchen2dining.zip Priory-frames-living2dining.zip'

for f in $FILES
do
	if [ ! -f "zips/$f" ]
	then
		echo "Downloading $f..."
		curl -L "https://tvg-collaborativeslam.s3.eu-west-1.amazonaws.com/$f" > "zips/$f"

		echo "Unzipping $f..."
		unzip -qq "zips/$f"
	else
		echo "Skipping $f, already downloaded"
	fi
done
