#!/bash/bin
clear
/bin/bash fedora/screens/fedora_screen.sh
echo "Are you ready to start the installation process"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) echo "Starting installation"
      /bin/bash fedora/checks/check_git.sh
      /bin/bash fedora/checks/check_zsh.sh
      /bin/bash fedora/checks/check_oh_my_zsh.sh
      /bin/bash fedora/checks/check_ruby.sh
      /bin/bash fedora/checks/check_rails.sh
      /bin/bash fedora/checks/check_node_and_npm.sh
      /bin/bash fedora/screens/fedora_screen_setup_done.sh
      echo "Setup finished would you like to install customizations"
      select cyn in "Yes" "No"; do
        case $cyn in
          Yes ) echo "Starting customizations"; break;;
          No ) echo "Exiting"; exit;;
        esac
      done; break;;
    No ) echo "Exiting"; exit;;
  esac
done
