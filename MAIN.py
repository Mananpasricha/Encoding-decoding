#encoding & decoding  project
#introduction
print("hello")
print("welcome to the best encoding and decoding Tools")
print("#########################################################")
print("#########################################################")
print("###### this tool is developed by manan pasricha##########")
print("#########################################################")
print("#########################################################")
print
print("I hope you have you KEY ")
print("starting")
#funtions
def encryption (string , key):
    encrypted_text = ""
    for letter in string :
        encrypted_letter = ord(letter) + key
        encrypted_text = encrypted_text + chr(encrypted_letter)
    print(encrypted_text)
def decryption(string , key):
    decrypted_text = ""
    for letter in string :
        decrypted_letter = ord(letter) -key
        decrypted_text = decrypted_text + chr(decrypted_letter)
    print(decrypted_text)
#main
print("press 1 for encoding") 
print("press 2 for decoding")
user_choice = int(input(""))
key = int(input("please enter the key:"))
string= str(input("please enter the text:"))
if user_choice == 1:
    encryption(string,key)
elif user_choice == 2:
    decryption(string,key)
else :
    print("error")

