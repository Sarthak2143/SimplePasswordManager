# CLI Password Manager

It's a simple CLI password manager written in bash.

## Installation

```bash
git clone https://github.com/Sarthak2143/SimplePasswordManager

cd SimplePasswordManager/

chmod +x start.sh

./start.sh
```
It'll update the system and install needed packages and will ask you for **master password** that will be used to decrypt passwords.

For opening password manager type `./passwdmanage.sh`

## Directory tree

```
.
├── LICENSE
├── README.md
├── about.txt
├── crypt
│   ├── decrypt.py
│   ├── encrypt.py
│   ├── keys
│   │   ├── key.key
│   │   └── master_pwd.key
│   ├── master_dec.py
│   └── master_enc.py
├── passwdmanage.sh
├── pwds
│   └── passwords.txt
├── start.sh
└── utils
    ├── common.txt
    └── passwdstrengthcheck.py

4 directories, 14 files
```

## Features

1. Reading passwords
1. Writing passwords
1. Generating passwords
1. Encrypting/Decrypting passwords

### Reading password 

It reads the content of the file where we're storing all the passwords and accounts name.

Format:
```
Account Name | Password 




```

### Writing passwords

For adding more passwords with account name in the file.

### Generating passwords

It's used for generating password that are random characters from base64 

Args -> Length and Amount of passwords

### Encrypting/Decrypting

It's an automatic process, it'll decrypt passwords before reading then encrypt them, same for writing mode.


It's done for safety of passwords, so not everyone can view your passwords if they got access to your system.

This needs a master password that's saved when you started the manager.

## Why this?

As we all know this is digital age, and our all digital data is protected by passwords. But remembering them is a pain so you need a password manager to save your passwords and easy password can be compromised easily so we have also a feature of generating random string passwords so your all data can be secure.

And if you're a linux user, you know that CLI is superior and having a CLI password manager is superior than other password managers.

According to internet,
> Password managers protect the data they store through what's known as encryption. This process scrambles data so that it's tougher for hackers, cybercrooks and others to access your personal information, such as Social Security numbers and credit card numbers.


# Future

So this password manager will be free and open source for life-time, and anyone can use it if they have linux installed. Talking about the future, i'll add better encryotion system that will make it even more safe and if everything goes right I might add users system.

If you've read till here, please give a star to the project to support it.
