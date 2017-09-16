#!/bash/bin
# main screen of setup
echo "

  ██████ ▄▄▄█████▓ ▄▄▄       ██▀███  ▄▄▄█████▓     ██████ ▓█████▄▄▄█████▓ █    ██  ██▓███
▒██    ▒ ▓  ██▒ ▓▒▒████▄    ▓██ ▒ ██▒▓  ██▒ ▓▒   ▒██    ▒ ▓█   ▀▓  ██▒ ▓▒ ██  ▓██▒▓██░  ██▒
░ ▓██▄   ▒ ▓██░ ▒░▒██  ▀█▄  ▓██ ░▄█ ▒▒ ▓██░ ▒░   ░ ▓██▄   ▒███  ▒ ▓██░ ▒░▓██  ▒██░▓██░ ██▓▒
  ▒   ██▒░ ▓██▓ ░ ░██▄▄▄▄██ ▒██▀▀█▄  ░ ▓██▓ ░      ▒   ██▒▒▓█  ▄░ ▓██▓ ░ ▓▓█  ░██░▒██▄█▓▒ ▒
▒██████▒▒  ▒██▒ ░  ▓█   ▓██▒░██▓ ▒██▒  ▒██▒ ░    ▒██████▒▒░▒████▒ ▒██▒ ░ ▒▒█████▓ ▒██▒ ░  ░
▒ ▒▓▒ ▒ ░  ▒ ░░    ▒▒   ▓▒█░░ ▒▓ ░▒▓░  ▒ ░░      ▒ ▒▓▒ ▒ ░░░ ▒░ ░ ▒ ░░   ░▒▓▒ ▒ ▒ ▒▓▒░ ░  ░
░ ░▒  ░ ░    ░      ▒   ▒▒ ░  ░▒ ░ ▒░    ░       ░ ░▒  ░ ░ ░ ░  ░   ░    ░░▒░ ░ ░ ░▒ ░
░  ░  ░    ░        ░   ▒     ░░   ░   ░         ░  ░  ░     ░    ░       ░░░ ░ ░ ░░
      ░                 ░  ░   ░                       ░     ░  ░           ░

"
echo "Would you like to start the setup process"
select yn in "Yes" "No"; do
  case $yn in
    Yes )
      echo "What operating system are you running"
      select opt in "OS X" "Ubuntu"; do
        case $opt in
          "OS X" ) echo "You chose OS X"; break;;
          Ubuntu ) /bin/bash ubuntu/ubuntu.sh; break;;
        esac
      done ; break;;
    No )  exit;;
  esac
done
