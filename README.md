## Streaming live video

### architecture overview:

- stream originates from ffmpeg (on OSX)
- ffmpeg publishes (over http) to goreplay (http multiplexer - https://github.com/buger/goreplay)
- goreplay sends to multiple ssh port forwards
- each site is running a jsmpeg websocket relay viewer thing (https://github.com/phoboslab/jsmpeg)


