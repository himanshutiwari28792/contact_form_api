# README

Created a Simple contact form api only app in rails 6. Which is created to give the API end point to create the contact in the database. I have created 2 API basic create API for messages(Used messages instead of contact). And other to list all the available message in the system.

I have used the Action Mailer for sending the email after creating the message in the db. I have used Gmail SMTP setting in the development which require gmail username and gmail password to send email. In production we can cnage the host to the company URL and set the Gmail username and password.

I have normally used the Rails Internationalization for the static text in the application and used for the en language by default.

* Ruby version = 2.6.3
* Rails version = Rails 6.1.1

Below are the sample API enpoints and there required parameter.

POST
message create request
http://localhost:3000/messages
getting the messages saved in db


JSON
{
  "message": {
    "first_name": "himanshu",
    "last_name": "tiwari",
    "email": "ht.28792@gmail.com",
    "phone": "7869500841",
    "body": "This is the test message."
  }
}

GET
Message index
http://localhost:3000/messages
get all the messages in the db

POST
message create request
GET
Message index

