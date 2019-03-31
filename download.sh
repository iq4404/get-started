#!/bin/bash
patchespath=$(pwd)
if [ $USER = root ]
then
homedir="/root/"
else
homedir="/home/$USER/"
fi
mkdir "$homedir"lineage && cd "$homedir"lineage
repo init -u git://github.com/iq4404/manifest-default.git -b cm-14.1 && repo sync
cp -r $patchespath/patches "$homedir"lineage/device/Fly/IQ4404/patches
cd "$homedir"lineage/device/Fly/IQ4404/patches && chmod +x apply.sh && ./apply.sh
echo "Your lineage OS in: "$homedir"lineage/"
