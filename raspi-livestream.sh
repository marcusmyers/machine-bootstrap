#!/bin/bash

echo 'Get latest node.js for ARM arch...'
wget http://node-arm.herokuapp.com/node_latest_armhf.deb

echo 'Install node.js...'
sudo dpkg -i node_latest_armhf.deb

echo 'Install forever globally'
sudo npm install forever --global

echo 'Make node_programs directory...'
mkdir /home/pi/node_programs

echo 'Change directory to node_programs...'
cd /home/pi/node_programs

echo 'Clone liveStreaming repo to Pi'
git clone https://github.com/marcusmyers/liveStreaming.git

echo 'Change directory to liveStreaming...'
cd /home/pi/node_programs/liveStreaming

echo  'Install all node modules...' 
npm install
