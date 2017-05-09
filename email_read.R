library(gmailr)
library(dplyr)
library(base64url)

gmail_auth()#Authenticates user
mes = messages() #Gets a list of emails
mes = unlist(mes)
my_message = message(mes[1],format = "full") #opens the latest email message from the list
#So running this i get the email body but i dont know how to retreive the email message into a variable :/
a=my_message$payload$parts[[1]]
b=a$body$data

body=as.character(base64_urldecode(b))