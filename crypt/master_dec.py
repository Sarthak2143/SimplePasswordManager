from cryptography.fernet import Fernet

with open("keys/master_pwd.key", "rb") as f:
    global key
    key = f.read()

k = Fernet(key)

with open("../pwds/master.pwd", "rb") as f:
    global token
    token = f.read()

with open("../pwds/master.pwd", "wb") as f:
    f.write(k.decrypt(token))