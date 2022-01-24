from cryptography.fernet import Fernet

with open("keys/master_pwd.key", "wb") as f:
    global key
    key = Fernet.generate_key()
    f.write(key)

k = Fernet(key)
with open("../pwds/master.pwd", "rb") as f:
    global data
    data = f.read()
    global token
    token = k.encrypt(data)

with open("../pwds/master.pwd", "wb") as f:
    f.write(token)