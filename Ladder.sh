echo  "Welcome in Snake And Ladder"
echo "-----------------------------"
echo "Start: "
echo " "
count=100
declare -a arr[10,10]
for (( i=0; i<10; i++ ))
{
echo "-----------------------------------------------------------"
k=19
for (( j=0;j<10;j++ ))
{
t=$(( i%2 ))
if [ $t -eq 1 ]
then
    m=$(( i-1 ))
    s=${arr[$m,$j]}
    #echo "Hi"
    arr[$i,$j]=$(( s - k ))
  if [ $i -eq 9 -a $j -ne 9 ]
    then
      echo -ne "|| 0${arr[$i,$j]} "
     else
           echo -ne "|| ${arr[$i,$j]} "
    fi
    k=$(( k-2 ))
    count=$(( count-1 ))
else
    arr[$i,$j]=$count
    if [ ${arr[$i,$j]} -eq 100 ]
      then
       echo -ne "||${arr[$i,$j]} "
      else
        echo -ne "|| ${arr[$i,$j]} "
      fi
   count=$(( count-1 ))
 fi
 }
  echo ""
  }
function Dice( )
{
rnd=$((1+RANDOM%6))
echo "random value is : $rnd"
}
Dice
function Player( ){
read -p "Enter player Number 1 for a and 2 for z " num
echo "Player $num"
}
Player
a=1
z=1
win=0
isWon( ){
 while [ $win -eq 0 ]
  {
    if [ $num -eq 1 ]
    then 
         Dice
          a=$(( a+rnd ))
    fi
  }

}
