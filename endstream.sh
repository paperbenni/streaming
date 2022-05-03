#!/bin/bash

echo "ending paperbenni stream"

# TODO kill countdown
# TODO kill interaction reminder
# TODO stop youtube stream

echo "switching back wiki"
sed -i '/wikilistmarker/s/.*/let g:vimwiki_list = [wiki, streamwiki] " wikilistmarker/' ~/.config/nvim/init.vim



echo "stopped paperbenni stream"
