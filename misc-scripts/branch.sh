#!/bin/bash
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
  cd $i;
  svn info | grep "^URL" | sed 's/URL: http:\/\/mscheid@subversion.int.bed.liquidpixels.net\///';
  cd ../;
done
cd ..
