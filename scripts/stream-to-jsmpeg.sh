ffmpeg -r 30 -s 320x240 -f avfoundation -i "0:0" -f mpegts -c:v mpeg1video -b 800k -r 30 http://127.0.0.1:8081/password
