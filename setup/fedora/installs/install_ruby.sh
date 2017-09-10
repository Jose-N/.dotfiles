#!/bash/bin
sudo dnf groupinstall "Development Tools" "Development Libraries"
sudo dnf install ruby
sudo dnf install ruby-tcltk rubygem-rake rubygem-test-unit
gem install rdoc
gem install sinatra
/bin/bash fedora/checks/check_ruby.sh
