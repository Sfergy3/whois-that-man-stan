#!/bin/bash

# whois script
# Stanley L. Ferguson III
# 22 Feb 2023
# I'm writing a whois script for my ops challenge

#assign Variables
ID=whois
Shovel=dig
Owner=host
Study=nslookup
Bogey=Target_Spotted.txt 
Target=google.com

#make the function
function Identify () {
touch Target_Spotted.txt
$ID $Target > $Bogey
$Shovel $Target > $Bogey
$Owner $Target > $Bogey
$Study $Target > $Bogey
gedit Target_Spotted.txt
}
 


#call the function
Identify

#celebrate
echo "Target Captured"
echo HOORAY