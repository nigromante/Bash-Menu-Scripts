

function mplayer_devices() {
    LIST=$(v4l2-ctl --list-devices | grep "/dev" | grep -v "/media" )
    echo $LIST
}

function mplayer_play_webcam() {
    mplayer tv:// -tv driver=v4l2:width=640:height=360:device=$1:fps=60:outfmt=yuy2  -msglevel all=-1  
}

function mplayer_play_easycap() {
    mplayer tv:// -tv driver=v4l2:width=720:height=480:outfmt=uyvy:norm=NTSC-M:device=$1:input=0:fps=25 -vo sdl -nosound
}

