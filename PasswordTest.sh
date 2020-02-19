echo "Welcome in PasswordTest"
read -p "Enter The password :" password
#z=$(echo "$password" | awk '/^[a-z]*[A-Z]{2}$/ {print $0}')
z=$(echo "$password" | awk '/^((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,28})$/ {print $0}')
if [ $z ]
then
   echo "Valid Password :"$z
 else
  echo "Invalid"
fi
