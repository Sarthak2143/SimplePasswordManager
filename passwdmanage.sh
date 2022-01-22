#!/usr/bin/env bash

echo "##### SIMPLE PASSWORD MANAGER #####"
echo "Welcome to Simple Password Manager"

encrypt() {
        cd crypt/
        python3 encrypt.py
        cd ..
}

decrypt() {
        cd crypt/
        python3 decrypt.py
        cd ..
}


choice="Read Write Generate About Exit"

PS3="Enter your choice: "

select opt in $choice; do

        if [ $opt = "Read" ];
        then
                echo "Enter your master password: "
                read master
                if [ $master = `cat pwds/master.pwd` ];
                then
                        echo "Reading passwords..."
                        sleep 0.7
                        echo ""
                        decrypt
                        cat pwds/passwords.txt
                        encrypt
                else
                        echo "Wrong password"
                fi
        elif [ $opt = "Write" ];
        then
                echo "Enter your master password: "
                read master
                if [ $master = `cat pwds/master.pwd` ];
                then
                        decrypt
                        echo "Writing Mode"
                        echo "Enter the account name: "
                        read account
                        echo "Enter the password: "
                        read password
                        echo "$account | $password" >> pwds/passwords.txt
                        sleep 0.7
                        echo "Wrote your password!"
                        encrypt
                fi

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
        elif [ $opt = "Exit" ];
        then
                echo "Exiting..."
                exit

        else
                echo "Invalid Option"
                break
        fi
done