#!/bin/bash
#welcome
echo "===============
 
Welcome to EDNA
 
==============="
game ()
{

#select a system
read -p "[0] NES
[1] SNES
[2] SEGA Genesis
[3] TurboGrafx 16
=====================

Select a system: " EMU

#config
GDIR="~/Games" #root path to roms folder
XRES="1920" #x res...
YRES="1080" #y res...
FS="1" #fullscreen
STRCH="1" #stretch

if [ "$EMU" = "0" ]; then #NES
	GPATH="NES"
	OPTIONS="-nes.no8lim 1 -nes.clipsides 1 -nes.stretch $STRCH -nes.xres $XRES -nes.yres $YRES -vdriver sdl -video.fs $FS"
elif [ "$EMU" = "1" ]; then #SNES
	GPATH="SNES"
	OPTIONS="-snes.stretch $STRCH -snes.xres $XRES -snes.yres $YRES -vdriver sdl -video.fs $FS"
elif [ "$EMU" = "2" ]; then #SEGA
	GPATH="SEGA"
	OPTIONS="-md.stretch $STRCH -md.xres $XRES -md.yres $YRES -vdriver sdl -video.fs $FS"
elif [ "$EMU" = "3" ]; then #TG16
	GPATH="TG16"
	OPTIONS="-pce.stretch $STRCH -pce.xres $XRES -pce.yres $YRES -vdriver sdl -video.fs $FS"
else    
	echo "==================

You have to select a system, biscuit head! trying again...

=================="
	game #restart
fi

#get file and run game
getrun () {
        #get file
        GAME=`zenity --file-selection --title="Select a Game" --filename="${GDIR}/${GPATH}/"`
        #run game
        mednafen $OPTIONS "$GAME"
	echo "==================

LETS TRY A DIFFERENT GAME

=================="
	game #select another game?
}

getrun #get file and run game

}

game #start

