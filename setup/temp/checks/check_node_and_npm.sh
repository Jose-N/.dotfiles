#!/bash/bin
echo "Checking for Node.js"
sleep 1
if [[ $(node -v 2>/dev/null) ]]
then
  echo "You Have Node.js Installed"
else
  echo "Node.js Not Found"
  sleep 2
  echo "Installing Node.js"
  sleep 2
  /bin/bash ubuntu/installs/install_node.sh
fi
