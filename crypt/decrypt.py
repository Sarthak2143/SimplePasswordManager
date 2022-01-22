from cryptography.fernet import Fernet

with open("key.key", "rb") as f:
    global key
    key = f.read()

k = Fernet(key)

with open("../pwds/passwords.txt", "rb") as f:
    global token
    token = f.read()

with open("../pwds/passwords.txt", "wb") as f:
    f.write(k.decrypt(token))