#!/bin/bash

file=ftlsave
dest="/usr/bin/"

if [ ! -f $file ];
then
  echo "Installation aborted. Could not find"$file
fi

chmod +x $file
cp $file $dest 2> /dev/null

if [ $? -eq 0 ];
then
  echo "installation successful"
else
  echo "installation aborted. Need root privileges"
fi
