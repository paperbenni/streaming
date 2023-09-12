#!/bin/bash

echo "marking stream as ready"

# TODO: switch OBS scene
# TODO: unmute OBS microphone

# TODO: test mpc stuff
mpc volume 100
mpc random on
mpc consume off
mpc repeat on
mpc load stream
mpc play
