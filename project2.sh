#!/bin/bash

#Author: David Maabobra Aanye
##Date created: 29/08/2023
##Subject: USING ATM CARD TO PURCHASE ON A WEBSITE


#Welcome message

echo "Welcome!..."

sleep 3s

echo "To make a purchase, please visit udemy.com"

sleep 4s

#Prompt for user to enter 16-digit card number ending 4412

read -p "Enter the 16- digit card number (0123 4512 0152 ****)" card_number_entered


if [ "$card_number_entered" == "0123451201524412" ]; then
 
	echo "Processing, wait....................."

else 
	echo "incorrect card number entered"
	exit 1

fi

sleep 3s

#Prompt user to enter pin
read -sp "Enter your pin": pin

sleep 3s

#Pin authentication
if [ "$pin" == "1957" ]; then

	echo "Processing, wait..........."
	sleep 4s

else
	echo "incorrect pin"
	exit 1
fi

read -p "Enter your postcode": postcode
read -p "Enter your CVC": CVC

#Postcode and CVC authentication
if [[ "$postcode" == "T4E5J1" && "$CVC" == "113" ]]; then
sleep 4s
	echo "Transaction successful"
	sleep 4s
	echo "Thank you for doing business with us!"

else
	echo "Transaction declined. Card blocked"
	sleep 3s
	echo "Contact operator for assistance"
fi



