#It'll check the strength of passwords
import string
import sys                                              
password = str(sys.argv[1])

upper_case = any([1 if c in string.ascii_uppercase else 0 for c in password])

lower_case = any([1 if c in string.ascii_lowercase else 0 for c in password])

special = any([1 if c in string.punctuation else 0 for c in password])

digits = any([1 if c in string.digits else 0 for c in password])

chars = [upper_case, lower_case, special, digits]

length = len(password)
with open("common.txt","r") as f:
    global common
    common = f.read()

score = 0

if length > 8:
    score += 1

if length > 12:
    score += 1

if length > 17:
    score += 1

if length > 20:
    score += 1

if password in common:
    print("Password found in common list, Score: 0/7 ")

print(f"Password length is {str(length)}, adding {str(score)} points")

if sum(chars) > 1:
    score += 1
if sum(chars) > 2:
    score += 1
if sum(chars) > 3:
    score += 1

print(f"Password has {str(sum(chars))} different types of characters, adding {str(sum(chars)-1)} points")

if score < 4:
    print(f"Password is quite week, Score = {str(score)}/7 ")
elif score == 4:
    print(f"Password is fine, Score = {str(score)}/7")
elif score > 4 and score < 6:
    print(f"Password is quite good, Score = {str(score)}/7")
elif score > 6:
    print(f"Password is strong! Score = {str(score)}/7 ")
else:
    pass