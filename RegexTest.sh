#!/bin/bash
echo " Regular Expression "
echo "--------------------"
function FirstName()
{
read -p "Enter First name :" fname
z=$(echo "$fname" | awk '/^[a-zA-Z]{5,10}$/ {print $0}')
if [ $z ]
 then
  echo "First Name is :" $z
else
     echo "Invalid"
fi
}
function LastName()
{
read -p "Enter Last name :" lname
a=$(echo "$lname" | awk '/^[a-zA-Z]{2,7}$/ {print $0}')
if [ $a ]
then
    echo "Last name is :" $a
else
   echo "Invalid"
fi
}
function Mail()
{
read -p "Enter Email Id :" email
m=$(echo "$email" | awk '/^[a-z0-9]*@[a-z]*\.[a-z]*$/ {print $0}')
if [ $m ]
then
   echo "Your mail id is :" $m
else
    echo "Invalid"
fi
}
function Mobile()
{
read -p "Enter Mobile Number :" mob
mo=$(echo "$mob" | awk '/^[0-9]{10}$/ {print $0}')
if [ $mo ]
 then
  echo "Mobile number is :" $mo
 else
 echo "Invalid Phone number"
fi
}
function Password()
{
read -p "Enter Your Password :" password
echo " "
paas=$(echo "$password" | awk '/^[A-Za-z0-9[@#$%&*]]*[a-z]+[a-zA-z0-9[@#$&%*]]*[A-Z]+[a-zA-Z0-9[@#$%&*]]*$/ {print $0}')
if [ $pass ]
then
    echo "Password is :" $pass
else
   echo "Invalid Password"
fi
}
echo "1:FirstName , 2:LastName , 3:Mail , 4:MobileNumber , 5:Password "
read -p "Enter your choice :" option
 case $option in
  "1" )
      FirstName ;;
  "2" )
      LastName ;;
  "3" )
      Mail ;;
  "4" )
      Mobile ;;
  "5" )
     Password ;;
  * )
    echo "Wrong Choice" ;;

 esac

