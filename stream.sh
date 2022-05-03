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
sed -i '/wikilistmarker/s/.*/let g:vimwiki_list = [streamwiki, wiki] " wikilistmarker/' ~/.config/nvim/init.vim

# TODO start music stuff

# start OBS

if ! pgrep obs
then
    obs &
fi

# TODO set microphone source to mute
# TODO set destkop audio source as active


brave https://dashboard.twitch.tv/u/paperbenni/stream-manager
brave https://studio.youtube.com/video/FJtcDT_6PNM/livestreaming
