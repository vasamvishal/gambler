#Welcome to the system
read -p "Enter the no of days:" days
read -p "Enter the no of times to play:" times

min=0;
max=0;
totalamountoneday=0;
function bet()
{

day=100
stakes=100
min=$(( $stakes/2 ));
max=$(( $stakes+min ));
win=1
won=0
loss=0
bet=0

for (( count=0;count<$days;count++ ))
do
while [ $bet != $times ]
do
       
        random=$((RANDOM%2))
         bet=$(( $bet+1 ))
        if [ $random -eq $win ] 
        then
               echo "You Win"
               stakes=$(( $stakes+1 ))
	if [ $stakes -eq $max ]
	then 
              echo "profit"
              won=$(( $won+1 ))
		break;
	fi

        else
        echo "You loss"
	stakes=$(( $stakes-1 ))

	if [ $stakes -eq $min ]
	then
         	echo "loss"
                loss=$(( $loss+1 ))
		break;
	fi
	fi
	done
	echo $stakes
totalamountoneday=$(( $totalamountoneday+ $stakes ))
echo $won
echo $loss
bet=0
stack=100
 done

echo $won
echo $loss
calculate=$(( $day*$days ))
if [ $totalamountoneday -ge $calculate ]
then
   totalprofit=$(( $totalamountoneday-$calculate ))
else
   totallost=$(( $calculate-$totalamountoneday ))
 fi

}
bet 

