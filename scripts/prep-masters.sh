#!/bin/sh

for file in [0-5]_* ; do
  bash $file || SUCCESS=false
  [ "$SUCCESS" == "false" ] && echo "script $file returned an error; stopping" && exit 1
done
