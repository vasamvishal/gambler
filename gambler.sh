#Welcome to the system
read -p "Enter the no of days:" days
#read -p "Enter the no of times to play:" times
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
bet=1
intialcash=0;
for (( count=0;count<$days;count++ ))
do
cash=$(( $totalStake ))
        stack $cash

while [ $bet != 0 ]
do  
        random=$((RANDOM%2))
        bet=$(( $bet+1 ))
        if [ $random -eq $win ] 
        then
               
               cash=$(( $cash+1 ))
	if [ $cash -eq $max ]
	then 
              echo "reached limit"
              win=$(( $win+1 ))
		break;
	fi

        else
        
	cash=$(( $cash-1 ))

	if [ $cash -eq $min ]
	then
         	echo "reached lowest limit"
                loss=$(( $loss+1 ))
		break;
	fi
	fi
	done
	
	if [ $cash -ge $intialcash ]
        then 
	  #   won=$(( $won+1 ))
         #else
          #   loss=$(( $loss+1 ))
         # fi 
	#echo $cash
        diff=$(( $cash-$initialcash )) 
	else
	diff=$(( $initialcash-$cash ))
totalamountoneday=$(( $totalamountoneday+ $diff ))
echo $totalamountoneday
#echo $won
#echo $loss
bet=1
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
