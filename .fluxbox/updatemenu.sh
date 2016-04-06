#!/bin/bash
mmaker --no-debian --no-legacy -f -t xterm fluxbox &&
mv -f /home/andrew/.fluxbox/menu /home/andrew/.fluxbox/menu.backup &&
awk '/\[exit\]/{print "\t\t[exec] (Power) {oblogout}"}1' /home/andrew/.fluxbox/menu.backup >/home/andrew/.fluxbox/menu &&
mv -f /home/andrew/.fluxbox/menu /home/andrew/.fluxbox/menu.backup2 &&
awk '/\[restart\]/{print "\t\t[exec] (Update Menu) {/home/andrew/.fluxbox/updatemenu.sh}"}1' /home/andrew/.fluxbox/menu.backup2 >/home/andrew/.fluxbox/menu &&
rm /home/andrew/.fluxbox/menu.backup2
