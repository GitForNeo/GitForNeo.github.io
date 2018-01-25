#!/bin/sh

#To make Packages on iPhone do:
rm Packages
./dpkg-scanpackages Files /dev/null > Packages

#To make .gz and .bz2:
# rm Packages
rm Packages.gz
rm Packages.bz2
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2

#To push all to host:
cd ..
git add -A
git commit -m "Repo"
git push -u origin master