#!/bin/bash

# initialize a fake webcam that is easier to read for obs and has artificial background blur on it

instantinstall akvcam-dkms
instantinstall v4l-utils
instantinstall v4l2loopback-dkms
instantinstall python-pip


if ! v4l2-ctl --list-devices | grep -q '^fake-cam'; then
	echo "initializing background blur for webcam"
	sudo modprobe v4l2loopback devices=1 exclusive_caps=1 video_nr=2 card_label="fake-cam"
	if ! [ -e ~/stuff/Linux-Fake-Background-Webcam/ ]; then
		echo "installing linux-fake-background-webcam"
		mkdir ~/stuff
		cd ~/stuff || exit 1
		git clone --depth=10 https://github.com/fangfufu/Linux-Fake-Background-Webcam
		pushd Linux-Fake-Background-Webcam || exit 1
		./install.sh
		popd || exit 1
	fi
    cd ~/stuff/Linux-Fake-Background-Webcam || exit 1
    python3 fake.py --background-blur 21 --no-background --no-foreground
else
	echo "webcam already initialized"
	exit 1
fi






