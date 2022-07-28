# streaming

some scripts I use for live streaming

OBS configs are in my dotfiles repo. 

They contain a restream auth token, sadly there's no easy way to make
them public through yadm

## Process of doing a stream

## Start/prepare stream

```
./stream.sh
```

This will put you live and put on a "stream starting" waiting card

## Join stream

```
./ready.sh
```

Switch from the waiting card to desktop capture, unmute microphone, start background music

## ending stream
```
./endstream.sh
```

Shut down stream, kill all stream related processes

## Dependencies

My Stream assets
inter-fonts package

## Disclaimer

This is **highly** specific to my setup. It relies on my dotfiles,
instantOS utilities, instantOS assets and will probably not work on
any other setup as is. 

Please do however feel free to copy parts of this or to be inspired
by it. 

