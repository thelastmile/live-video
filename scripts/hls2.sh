
ffmpeg -y \
 -r 30 -s 320x240 -f avfoundation -i "0:0" -c:v libx264 \
-profile:v baseline -maxrate 400k -bufsize 1835k -pix_fmt yuv420p -flags -global_header \
-hls_time 10 -hls_list_size 6 -hls_wrap 10 -start_number 1 \
stream.m3u8
