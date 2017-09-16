#!/bash/bin
sudo yum install gcc ruby-devel zlib-devel
gem install rails
rails -v
/bin/bash fedora/checks/check_rails.sh
