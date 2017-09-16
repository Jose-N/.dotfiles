#!/bash/bin
echo "Checking for Git"
sleep 1
if [[ $(git --version 2>/dev/null) ]]
then
  echo "You Have Git Installed"
else
  echo "Git Not Found"
  sleep 2
  echo "Installing Git"
  sleep 2
  /bin/bash ubuntu/installs/install_git.sh
fi
