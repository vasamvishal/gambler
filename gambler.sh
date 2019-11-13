#Welcome to the system
read -p "Enter the no of days:" days
function bet()
{
stakes=100
win=1
loss=0
bet=0;
for (( count=0;count<$days;count++ ))
do
while [ $stakes != 0 ]
do
	echo "echo"
	bet=$(( $bet+1 ))
        random=$((RANDOM%2))
         if [ $random -eq $win ] 
       	then
	echo "You Win"
          stakes=$(( $stakes+1 ))
		echo $stakes
	else
	echo "You loss"
    	  stakes=$(( $stakes-1 ))
 	echo $stakes
	fi
done
stakes=100

done
}

bet 
