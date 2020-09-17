#!/bin/bash

die() {
    notify-send "streamticker crashed: $1"
    echo "$1"
    exit 1
}

while :; do
    cd ~/workspace/streaming/ticker || die "no tickerfile found"
    FILE="$(ls | shuf | head -1)"
    TITLE="$(tail -1 "$FILE")"
    SUBTITLE="$(head -1 "$FILE")"
    cd ~/workspace/streaming/ || die "no streaming workspace found"
    ./message.sh "$SUBTITLE" "$TITLE"
    sleep 2m
done
