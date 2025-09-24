#!/bin/bash

for i in *.flac;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -ab 320k -ac 2 -ar 48000 -map_metadata 0 -id3v2_version 3 "${name}.mp3"
done

 
#
#
ffmpeg -i ./input.flac -ab 320k -ac 2 -vn -y -map_metadata 1 -id3v2_version 3 ./output.mp3

# flags: 
ab - audiobitrate 320k
ac - audiochannels 2
ar - audio sampling rate 480000
vn - disable video
y  - overwrite output files

#