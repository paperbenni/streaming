#!/bin/bash

echo "paperbenni stream assistant"
echo ""

command -v obs || instantinstall obs-studio-git
instantinstall obs-cli
instantinstall python

#TODO

#ask for date
echo "when is the stream starting? (format example 21:45)"

echo "enter stream title"
# TODO ask for title

# TODO pick from premade thumbnails
# TODO option "other" opens file picker

# TODO apply date and title to youtube/twitch

# switch wiki to public one
echo "switching wiki to public wiki"
sed -i '/wikilistmarker/s/.*/let g:vimwiki_list = [streamwiki, wiki] " wikilistmarker/' ~/.config/nvim/init.vim

# set up background music
mpc volume 100
mpc random on
mpc consume off
mpc repeat on
mpc load stream-intro
mpc play

# start OBS
if ! pgrep obs; then
    obs &
fi

if ! pgrep easyeffects; then
    easyeffects --gapplication-service &
fi

# TODO set destkop audio source as active
# TODO set OBS microphone source to mute
# TODO set OBS scene to welcome screen

# TODO start countdown loop

# TODO interaction reminder loop

brave https://dashboard.twitch.tv/u/paperbenni/stream-manager
brave https://studio.youtube.com/video/FJtcDT_6PNM/livestreaming
