#!/bash/bin
#ask which install process to go through
echo "

 █    ██  ▄▄▄▄    █    ██  ███▄    █ ▄▄▄█████▓ █    ██
 ██  ▓██▒▓█████▄  ██  ▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒ ██  ▓██▒
▓██  ▒██░▒██▒ ▄██▓██  ▒██░▓██  ▀█ ██▒▒ ▓██░ ▒░▓██  ▒██░
▓▓█  ░██░▒██░█▀  ▓▓█  ░██░▓██▒  ▐▌██▒░ ▓██▓ ░ ▓▓█  ░██░
▒▒█████▓ ░▓█  ▀█▓▒▒█████▓ ▒██░   ▓██░  ▒██▒ ░ ▒▒█████▓
░▒▓▒ ▒ ▒ ░▒▓███▀▒░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒   ▒ ░░   ░▒▓▒ ▒ ▒
░░▒░ ░ ░ ▒░▒   ░ ░░▒░ ░ ░ ░ ░░   ░ ▒░    ░    ░░▒░ ░ ░
 ░░░ ░ ░  ░    ░  ░░░ ░ ░    ░   ░ ░   ░       ░░░ ░ ░
   ░      ░         ░              ░             ░
               ░
"
echo "Which install process would you like to start"
select opt in "Full" "Dev" "Apps" "Config Files" "None"; do
  case $opt in
    Full) echo "chose full"; break;;
    Dev) /bin/bash ubuntu/dev/dev.sh; break;;
    Apps) echo "chose apps"; break;;
    "Config Files") /bin/bash ubuntu/config_files/config.sh; break;;
    None) echo "bye bye"; exit;;
  esac
done
