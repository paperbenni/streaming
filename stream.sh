#!/bin/bash

echo "paperbenni stream assistant"
echo ""

doxxwarning() {
    if pgrep "$1"; then
        echo "please close $1, you don't wanna dox yourself"
        exit 1
    fi
}

doxxwarning thunderbird
doxxwarning signal-desktop
doxxwarning mattermost-desk

if pgrep -f '/usr/lib/obsidian/app.asar'; then
    echo "please close obsidian, you don't wanna dox yourself"
    exit 1
fi

command -v obs || instantinstall obs-studio-git
instantinstall python
instantinstall obs-cli

if systemctl list-unit-files | grep enabled | grep -q mpd; then
    echo "mpd system service found, please use mpd with --user"
    exit 1
fi

pgrep mpd || {
    echo "enabling mpd"
    systemctl --user enable --now mpd.service
    sleep 3
}

#ask for date
echo "when is the stream starting? (format example 21:45)"

echo "enter stream title"

# TODO ask for title

# TODO pick from premade thumbnails
# TODO option "other" opens file picker

# TODO apply date and title to youtube/twitch

# TODO: post discord message about stream
# TODO: tweet out stream

# TODO: set obs audio source to easyeffects

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

if ! pgrep easyeffects; then
    echo "starting easyeffects"
    easyeffects --gapplication-service &
    sleep 1
fi

# start OBS
if ! pgrep obs; then
    obs &
fi

# TODO set destkop audio source as active
# TODO set OBS microphone source to mute
# TODO set OBS scene to welcome screen

# TODO start countdown loop

# TODO interaction reminder loop

brave https://dashboard.twitch.tv/u/paperbenni/stream-manager
brave https://studio.youtube.com/video/FJtcDT_6PNM/livestreaming
