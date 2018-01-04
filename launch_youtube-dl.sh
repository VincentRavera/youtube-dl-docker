#!/bin/bash
# Use this file as alias to launch a ipython container

if [ -z $1 ]; then
    echo "No URL given :: exiting"
else
    workspace=$(pwd)
    echo "RUNNING : docker run -v $workspace:/mnt -it vincentravera/youtube-dl-docker youtube-dl --continue --ignore-errors --no-overwrites  --extract-audio --audio-format mp3 -o \"%(title)s.%(ext)s\" $1"
    docker run -v $workspace:/mnt -it vincentravera/youtube-dl-docker youtube-dl --continue --ignore-errors --no-overwrites --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $1
fi
