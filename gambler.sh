#Welcome to the system
read -p "Enter the no of days:" days
read -p "Enter the no of times to play:" times
#stack=100;
min=0;
max=0;
totalStake=100;
cash=0;
totalamountoneday=0;
function stack()
{
intialcash=$cash
min=$(( $cash/2 ));
max=$(( $cash+min ));
}

function bet()
{
day=100
win=1
won=0
loss=0
bet=0
intialcash=0;
for (( count=0;count<$days;count++ ))
do
cash=$(( $cash+$totalStake ))
        stack $cash

while [ $bet != $times ]
do  
#        cash=$(( $cash+$totalStake ))
 #       stack $cash
        random=$((RANDOM%2))
        bet=$(( $bet+1 ))
        if [ $random -eq $win ] 
        then
               echo "You Win"
               cash=$(( $cash+1 ))
	if [ $cash -eq $max ]
	then 
              echo "profit"
             # won=$(( $won+1 ))
		break;
	fi

        else
        echo "You loss"
	cash=$(( $cash-1 ))

	if [ $cash -eq $min ]
	then
         	echo "loss"
              #  loss=$(( $loss+1 ))
		break;
	fi
	fi
	done
	
	if [ $cash -ge $intialcash ]
        then 
	     won=$(( $won+1 ))
         else
             loss=$(( $loss+1 ))
          fi 
	echo $cash
totalamountoneday=$(( $totalamountoneday+ $cash ))
echo $totalamountoneday
echo $won
echo $loss
bet=0
stakes=$(( $stakes+100 ))
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

