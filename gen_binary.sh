#!/bin/bash
# by fuldaros
ver=0.7
mkdir binary_btool
cd btool
../shc -v -f makeproj.sh
rm -f makeproj.sh.x.c
cd ../
cat btool/makeproj.sh.x > binary_btool/makeproj
rm -f btool/makeproj.sh.x
chmod 777 binary_btool/makeproj
./binary_btool/makeproj
chmod -R 777 build/
rm -rf binary_btool/
cd build/
mkdir ../tmp
mkdir ../tmp/akb_"$ver"
mkdir ../out
cp -rf * ../tmp/akb_"$ver"
cd ../tmp/akb_"$ver"
zip -r ../../out/akb_"$ver"-release.zip *
cd ../../
rm -rf tmp/
