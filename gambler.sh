#Welcome to the system
read -p "Enter the no of days:" days
read -p "Enter the no of times to play:" times
min=0;
max=0;
totalStake=100;
cash=0;
totalprofit1=0; 
luckyday=0;
totalloss1=0;
unluckyday=0;
totalamountoneday=0;
total=0;
losstotal=0;
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
counter=1;
for (( count=0;count<$days;count++ ))
do
	cash=$(( $cash+$totalStake ))
        stack $cash

while [ $bet != $times ]
do  
        random=$((RANDOM%2))
        bet=$(( $bet+1 ))
        if [ $random -eq $win ] 
        then
               echo "You Win"
               cash=$(( $cash+1 ))
	if [ $cash -ge $max ]
	then 
              echo "profit"
             # won=$(( $won+1 ))
		break;
	fi
        else
        echo "You loss"
	cash=$(( $cash-1 ))
	if [ $cash -lt $min ]
	then
         	echo "loss"
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
	totalamountoneday=$(( $cash ))
echo $totalamountoneday
echo $won
echo $loss
bet=0
stakes=$(( $stakes+100 ))
calculate=$(( $day*$counter ))
counter=$(( $counter+1 ))

if [ $totalamountoneday -ge $calculate ]
then
   totalprofit1=$(( $totalamountoneday-$calculate ))
	echo "totalprofit" $totalprofit1
else
   totalloss1=$(( $calculate-$totalamountoneday ))
 	echo "totalost" $totalloss1
 fi
echo $total
   if [ $totalprofit1 -ge $total ]
   then
       total=$totalprofit1
       luckyday=$count
   elif [ $totalloss1 -ge $losstotal ]
       then
	losstotal=$totalloss1
	unluckyday=$count
    fi
done
calculate=$(( $day*$days ))
if [ $totalamountoneday -ge $calculate ]
then
   totalprofit=$(( $totalamountoneday-$calculate ))
else
   totallost=$(( $calculate-$totalamountoneday ))
 fi
echo ":profit value" $totalprofit1
echo ":profit day" $luckyday
echo ":loss day" $unluckyday
echo ":loss value" $totalloss1
}

bet 


