from cryptography.fernet import Fernet

with open("key.key", "wb") as f:
    global key
    key = Fernet.generate_key()
    f.write(key)

k = Fernet(key)
with open("../pwds/passwords.txt", "rb") as f:
    global data
    data = f.read()
    global token
    token = k.encrypt(data)

with open("../pwds/passwords.txt", "wb") as f:
    f.write(token)