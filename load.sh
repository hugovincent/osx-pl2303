#!/bin/sh
cp -R ./build/Release/osx-pl2303.kext /System/Library/Extensions
cd /System/Library/Extensions
chown -R root:wheel osx-pl2303.kext
chmod -R 755 osx-pl2303.kext
kextcache -e
kextload osx-pl2303.kext

