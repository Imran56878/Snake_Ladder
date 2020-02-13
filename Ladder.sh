echo  "Welcome in Snake And Ladder"
echo "-----------------------------"
count=100
declare -a arr[10,10]
for (( i=0; i<10; i++ ))
{
for (( j=0;j<10;j++ ))
{
arr[$i,$j]=$count
echo -ne " ${arr[$i,$j]}"
count=$(( count-1 ))
}
echo ""
}
