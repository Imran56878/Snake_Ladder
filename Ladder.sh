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
}

function Player( ){
read -p "Enter player Number 1 for a and 2 for z " num
echo "Player $num"
}

a=0
z=0
win=0
function isWon( )
{
if [ $a -eq 100 ]
 then
    win=1
    echo "a is winner"
   elif [ $z -eq 100 ]
    then
     win=1
     echo "z is winner" 
   fi
}
function Down( )
 {
 if [ $a -eq 99 ]
  then
      a=1
      echo " a is on down "
  elif [ $z -eq 99 ]
   then
      z=1
     echo " z is on down "
  fi
 }
function Up( )
{
if [ $a -eq 7 ]
 then
   a=23
   echo " a got ladder"
  elif [ $z -eq 7 ]
   then 
      z=23
     echo "z got ladder"
  fi

}

TestCondition( )
{
 Player
 while [ $win -eq 0 ]
  do
    if [ $num -eq 1 ]
        then 
           Dice
             a=$(( a+rnd ))
      	     if [ $a -gt 100 ]
              then
              a=$(( a-rnd ))
            fi
	     Up
             Down
             echo "Player1  value is : $rnd and count is : $a"
             isWon
             num=2
     else
           Dice
	      z=$(( z+rnd ))
             if [ $z -gt 100 ]
              then
                z=$(( z-rnd ))
              fi
	       Up
               Down
               echo "Player2 value is : $rnd and count is : $z"
               isWon
               num=1
   fi
  done
}
TestCondition
