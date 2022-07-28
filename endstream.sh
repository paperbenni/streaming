#!/bin/bash

echo "ending paperbenni stream"

pkill -f 'countdown.py [0-9]{2}'

# TODO kill interaction reminder
# TODO stop youtube stream

echo "switching back wiki"
sed -i '/wikilistmarker/s/.*/let g:vimwiki_list = [wiki, streamwiki] " wikilistmarker/' ~/.config/nvim/init.vim


echo "stopped paperbenni stream"

mpc volume 40
mpc pause

echo "ended paperbenni stream"
