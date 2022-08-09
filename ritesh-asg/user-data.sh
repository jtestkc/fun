#!/bin/bash -xe
  sudo apt-get -y update
  sudo apt-get -y install nginx
  sudo apt-get install -y git
  git clone https://github.com/jtestkc/gittest.git
  cd /gittest
  sudo cp -r contact.html css/ images/ index.html js/ health.html client.html medicine.html news.html /var/www/html/
  sudo rm /var/www/html/index.nginx-debian.html