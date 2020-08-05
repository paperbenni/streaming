#!/bin/bash

echo "${1:-test}" > ~/stream/message.txt
echo "${2:-title}" > ~/stream/title.txt
sleep 1

obshide() {
	echo "hiding $1"
	obs-cli hide-sceneitem messages "$1" || exit 
}

obsshow() {
	echo "showing $1"
	obs-cli show-sceneitem messages "$1" || exit
}

obsshow messageintro
sleep 1.5
obsshow messagestill
obsshow messagetext
obsshow messagetitle
sleep 0.1
obshide messageintro
sleep 3
obsshow messageoutro
sleep 0.1
obshide messagestill
obshide messagetext
obshide messagetitle
sleep 4
obshide messageoutro
