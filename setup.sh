#!/bin/bash
# Update and install Nginx web server
apt-get update
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx

# Install Git and Node.js environment
apt-get install -y git
curl -SL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt-get install -y nodejs

# Clone deployment repository and launch application
git clone https://github.com/sri2445/repo2.git
cd repo2
npm install
node index.js