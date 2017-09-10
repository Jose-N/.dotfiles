#!/bash/bin
# main screen of setup
/bin/bash screen.sh
echo "Would you like to start the setup process"
select yn in "Yes" "No"; do
  case $yn in
    Yes )
      echo "What operating system are you running"
      select opt in "OS X" "Fedora"; do
        case $opt in
          "OS X" ) echo "You chose OS X"; break;;
          Fedora ) /bin/bash fedora/fedora_main.sh; break;;
        esac
      done ; break;;
    No )  exit;;
  esac
done
