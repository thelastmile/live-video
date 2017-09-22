## Streaming live video

### architecture option 1 prototype overview:

this method was alluring because it seemed simple. but the mpeg1 audio was a bit choppy. could
possibly be improved by de/muxing the audio from video stream.

- stream originates from ffmpeg (on OSX)
- ffmpeg publishes (over http) to goreplay (http multiplexer - https://github.com/buger/goreplay)
- goreplay sends to multiple ssh port forwards
- each site is running a jsmpeg websocket relay viewer thing (https://github.com/phoboslab/jsmpeg)

### architecture option 2 prototype overview:

this method lets us use x264 encoder which means higher quality...

- use ffmpeg hls options to encode m3u8 playlist
- rsync every second or so to all sites
- use https://github.com/video-dev/hls.js to playback

### architecture option 3:

- use nginx rtmp module
- OBS streams to nginx rtmp
- nginx serves HLS (sites setup ssh port forward)

