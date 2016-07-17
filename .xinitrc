export TERMINAL=xterm

file=$2
file_to_check="$file.Xresources"

if [[ -a "$HOME/termcolours/$file_to_check" ]];
then
  xrdb -merge -I$HOME "$HOME/termcolours/$file_to_check"
else
  exit 1
fi

xrandr --newmode "1366x768_60.00"   85.25  1366 1440 1576 1784  768 771 781 798 -hsync +vsync
xrandr --addmode Virtual-1 1366x768_60.00
xrandr -s 1366x768_60.00
#compton -b &

compton -CG --backend xrender &

sleep 0.5 && feh --bg-fill $HOME/backgrounds/arch.jpg

session=${1:-i3}

case $session in
  awesome		) exec awesome;;
  i3|i3wm		) exec i3;;
  fluxbox		) exec startfluxbox;;
  qtile			) exec qtile;;
  bspwm			) sxhkd & exec bspwm;;
  dwm			) exec dwm;;
  spectrwm		) exec spectrwm;;
  xmonad		) exec xmonad;;
  wmii			) exec wmii;;
  icewm|icewm2		) exec icewm-session;;
  icewmns|icewm2ns	) exec icewm;;
  wmaker|windowmaker	) exec wmaker;;
  wm2			) exec wm2;;
  *) exec $1;;
esac
