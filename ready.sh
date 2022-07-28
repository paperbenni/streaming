#!/bin/bash

echo "marking stream as ready"

# TODO: switch OBS scene
# TODO: switch mpd playlist
# TODO: adjust mpd volume
# TODO: unmute OBS microphone

mpc volume 100
mpc random on
mpc consume off
mpc repeat on
mpc load stream
mpc play
