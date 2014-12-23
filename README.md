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

`brew install sox --with-mad --with-lame`