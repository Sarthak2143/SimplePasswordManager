#!/usr/bin/env bash
clear

echo "Setting up the Simple Password Manger..."

echo 'Enter your linux base: 1.Debian 2. Red Hat 3. Arch Linux btw'

read option

#updating

echo "[+] Updating the system"
if [ $option = "1" ];
then
        sudo apt update
elif [ $option = "2" ];
then
        sudo dnf update
elif [ $option = "3" ];
then
        sudo pacman -Syu
else
        echo "Invalid Linux Base"
fi
clear

#installing python3

echo "[+] Dowloading python3"
if [ $option = "1" ];
then
        sudo apt install python3
elif [ $option = "2" ];
then
        sudo dnf install python3
elif [ $option = "3" ];
then
        sudo pacman -S python3
else
        echo "Invalid Linux Base"
fi
clear
echo "[+] Installing cryptography module"
sudo pip install cryptography
clear
echo "[+] Giving perms"
chmod +x passwdmanage.sh
clear
echo "[+] Setting up master password"

echo "Enter a master password, it'll be used for decrypting passwords: "
read pass

echo "Your master password is '$pass', Don't forget it!"

echo "$pass" > pwds/master.pwd
cd crypt/
python3 master_enc.py
cd ..
sleep 2
clear

echo Successfully, setted up the Simple Password Manger \n Type  './passwdmanage.sh'