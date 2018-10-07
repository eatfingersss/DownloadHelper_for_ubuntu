#!/bin/bash
apt-get update
apt-get upgrade -y
for line in `cat download`
do
    echo '#################################start install ' $line
    apt-get install $line -y
    echo '#################################install over'
done
python3 -m pip install --upgrade pip
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' #单击最小化
gsettings set com.canonical.Unity.Launcher launcher-position Bottom #任务栏移动 已实效
