
ffmpeg -y \
 -r 30 -s 320x240 -f avfoundation -i "0:0" -c:v h264 -b 800k \
    -c:v copy \
    -map 0:0 \
    -f ssegment \
    -segment_time 4 \
    -segment_format mpegts \
    -segment_list "segments/stream.m3u8" \
    -segment_list_size 720 \
    -segment_list_flags live \
    -segment_list_type m3u8 \
    "segments/%08d.ts"
