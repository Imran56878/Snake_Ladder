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
