#!/bin/bash
echo 'installing xbindkeys...';
sudo apt install xbindkeys -y > /dev/null
echo 'installed...';

echo 'installing xdotool...';
sudo apt install xdotool -y > /dev/null
echo 'installed...';

echo 'saving navigation shortcuts between workspaces on /usr/bin...';
chmod +x ./src/desktop_up
chmod +x ./src/desktop_down
sudo cp ./src/desktop_up /usr/bin/
sudo cp ./src/desktop_down /usr/bin/
echo 'done'

echo 'saving shortcuts on ~/.xbindkeysrc, use alt + scroll to navigate between workspaces'
cat src/xbindkeysrc >> ~/.xbindkeysrc

xbindkeys --poll-rc

echo 'persisting changes'
echo 'xbindkeys --poll-rc' >> ~/.profile
echo 'all ready ;)'