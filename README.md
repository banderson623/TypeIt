# Type It

_A very simple web transcription application_


# Model setup
```
┌────────────┐
│            │                           ╔════════════╗
│    User    │───┐    ┌─────────┐        ║            ║
│            │   └────│ Author  │───┐    ║            ║
└────────────┘        └─────────┘   │    ║  Document  ║
                                    ┌────║            ║
┌────────────┐        ┌─────────┐   │    ║            ║
│            │   ┌────│ Author  │───┘    ║            ║
│    User    │───┘    └─────────┘        ╚════════════╝
│            │                                  │
└────────────┘                                  │
                                                │
                                                │
                                         ┌────────────┐
                                         │            │
                                         │            │
                                         │   Audio    │
                                         │            │
                                         └────────────┘
```

Made with [Monodraw](http://blog.helftone.com/monodraw-alpha-shipped/)

# Getting it running on OS X

## Audio processing library

For doing things like: http://superuser.com/questions/519649/tool-to-bulk-speed-up-convert-an-audio-file

`brew install ffmpeg`

or

`brew install sox --with-mad --with-lame`

This allows for

`ffmpeg -i ~/Desktop/atp96.mp3 -filter:a "atempo=0.5" -q:a 75 atp69.slow.mp3`

or

`sox ~/Desktop/atp96.mp3 ~/Desktop/atp69.slow.sox.mp3 -tempo 0.5`
respectively
