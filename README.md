#########################
#**Mednafi** - Mednafen UI#

version: 1.0
author: FiLeVeR10
#########################

################
## Dependencies ##
################

- mednafen
	- Provides multiple video games emulations
- zenity
	- Allows file selection to be much easier

############
# Optional #
############

- joystick
	- Provides support for usb controllers

################
# Mapping keys #
################

To map keys, in play use `alt-shift-n` where n is the player number.

##################
# USB Controller #
##################

If using a usb controller you'll need to plug controller in first, run `lsusb` and make sure it's present.
If you're not sure which listing is the controller, run `lsusb` first, then plug the controller in and run it again
See if it's showing an aditional listing after it's plugged in, if it is then you're good.

################
# Installation #
################

1. make sure `games.sh` is executable
2. edit `games.sh` on line 21 and update path to repo folder
	GDIR="~/Games" #root path to roms folder
	*replace "~/Games" with the path to the repository
3. Drop some ROMS in the system folders inside of the Games folder.
4. Run `sh games.sh` in the repo folder
5. Select a system.
6. Select a rom.
7. Hit `alt+shift+1` to set player 1 controls.
7. Play that shit.

#############
# Customize #
#############

In the `games.sh` file you can clearly see the commands being run and settings.

**Lines 20-25**

	GDIR = root roms folder
	XRES = x resolution value
	YRES = y resolution value
	FS = fullscreen boolean 
	STRCH = strech boolean

**Lines 27-38**

	GPATH = system path inside of root roms folder
	OPTIONS = mednafen command settings

**Lines 48-60**

	This executes zenity for the selected system's folder then runs mednafen with the options set by GPATH and OPTIONS for the system.

##############
# Need ROMS? #
##############

Well I can't provide roms, but I can say that you shouldn't try a google search like

	"index of" -html -htm -shtml -cfm -php -asp -aspx -pdf nes

or try to replace nes at the end with snes, sega, tg16 etc in the url or the resulting search,
because that very well may give you direct access to many rom files that are publicly available for direct download.