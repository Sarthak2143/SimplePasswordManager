#!/usr/bin/env bash

echo "##### SIMPLE PASSWORD MANAGER #####"
echo "Welcome to Simple Password Manager"
echo "Enter your choice: "

choice="Read Write Generate About"

select opt in $choice; do
	
	if [ $opt = "Read" ]; 
	then
		echo "Reading passwords..."
		sleep 0.7
		echo ""
		cat passwords.txt
	elif [ $opt = "Write" ];
	then
		echo "Writing Mode"
		echo "Enter the account name: "
		read account
		echo "Enter the password: "
		read password
		echo "$account | $password" >> passwords.txt
		sleep 0.7
		echo "Wrote your password!"

	elif [ $opt = "Generate" ];
	then
		echo "Password Generator"
		echo "Enter the length: "
		read length
		echo "Enter amount of passwords: "
		read amount
		echo "Generating Password(s)..."
		sleep 0.7
		for p in $(seq 1 $amount);
		do
			openssl rand -base64 48 | cut -c1-$length
		done
		
	elif [ $opt = "About" ];
	then
		sleep 0.7
		cat about.txt

	else
		echo "Invalid Option"
		break
	fi
done

