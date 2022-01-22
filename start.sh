#!/usr/bin/env bash
clear

echo "Setting up the Simple Password Manger..."

echo "[+] Updating the system"
sudo apt update
clear
echo "[+] Dowloading python3"
sudo apt install python3
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

echo "Your master password is $pass, Don't forget it!"

echo "$pass" > pwds/master.pwd
sleep 2
clear

echo "Successfully, setted up the Simple Password Manger \n Type  './passwdmanage.sh' "