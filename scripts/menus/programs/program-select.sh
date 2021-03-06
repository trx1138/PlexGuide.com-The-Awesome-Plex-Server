 #!/bin/bash

 # This takes .yml file and converts it to bash readable format
 sed -e 's/:[^:\/\/]/="/g;s/$/"/g;s/ *=/=/g' /opt/appdata/plexguide/var.yml > /opt/appdata/plexguide/var.sh

clear

while [ 1 ]
do
CHOICE=$(
whiptail --title "Program Categories" --menu "Make your choice" 16 26 9 \
    "1)" "Media Servers"  \
    "2)" "NZBs"  \
    "3)" "Torrents"  \
    "4)" "Managers"  \
    "5)" "Supporting"  \
    "6)" "UI Organizers"  \
    "7)" "Critical"  \
    "8)" "Beta Testing"  \
    "9)" "Exit  "  3>&2 2>&1 1>&3
)

result=$(whoami)
case $CHOICE in
    "1)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-media.sh
    ;;

    "2)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-nzbs.sh
    ;;

    "3)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-torrent.sh
    ;;

    "4)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-managers.sh
    ;;

    "5)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-support.sh
    ;;

    "6)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-ui.sh
    ;;

    "7)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-critical.sh
    ;;

    "8)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-beta.sh
    ;;

    "9)")
      clear
      exit 0
      ;;
esac
done
exit
