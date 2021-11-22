#!/bin/bash
set -exuo pipefail

#
# This script converts a given input file (mp4 preferred) to HTTP Streaming compatible DASH and HLS files.
# DASH is used for Firefox, HLS is used for all other browsers.
#
# Use this script like this (example for team dhl-vls):
# ./convert-video.sh /path/to/movie.mp4 dhl-vls
#
# The result will be a /dhl-vls folder in /uploads containing the HLS and DASH Stream files.
# The last thing to do is to set the 'video' property for team dhl-vls to 'dhl-vls'.
#

if [ -z "$1" ] || [ -z "$2" ]; then
  echo >&2 "Usage: $0 [input_path] [team_name]"
  exit 1
fi

echo "input: $1"
echo "team: $2"

# Create folder
mkdir -p "uploads/$2"

# Convert DASH video
ffmpeg -i "$1" \
    -preset veryslow -keyint_min 100 -g 100 -sc_threshold 0 \
    -r 30 -c:v libx264 -pix_fmt yuv420p -c:a aac -b:a 128k -ac 1 -ar 44100 \
    -map v:0 -s:0 320x180 -b:v:5 3M -maxrate:0 3.21M -bufsize:0 5.5M \
    -map v:0 -s:1 640x360 -b:v:6 4.5M -maxrate:2 4.8M -bufsize:1 8M \
    -map v:0 -s:2 1280x720 -b:v:7 6M -maxrate:3 6.42M -bufsize:2 11M \
    -map v:0 -s:3 1920x1080 -b:v:8 7.8M -maxrate:4 8.3M -bufsize:3 14M \
    -map 0:a \
    -init_seg_name init\$RepresentationID\$.\$ext\$ -media_seg_name chunk\$RepresentationID\$-\$Number%05d\$.\$ext\$ \
    -use_template 1 -use_timeline 1  \
    -seg_duration 4 -adaptation_sets "id=0,streams=v id=1,streams=a" \
    -f dash "uploads/$2/$2.mpd"

# Create HLS video (including audio)
ffmpeg -i "$1" \
    -c:v h264_videotoolbox \
    -crf 21 \
    -preset veryfast \
    -c:a aac -b:a 128k -ac 2 \
    -f hls -hls_time 4 -hls_playlist_type vod \
    "uploads/$2/$2.m3u8"

echo "Done!"
echo "You can find the result in: uploads/$2"
