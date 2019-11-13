#Welcome to the system
read -p "Enter the no of days:" days
min=0;
max=0;
function bet()
{
stakes=100
min=$(( $stakes/2 ));
max=$(( $stakes+min ));
win=1
loss=0
bet1=100

for (( count=0;count<$days;count++ ))
do
while [ $stakes != 0 ]
do

        random=$((RANDOM%2))
        if [ $random -eq $win ] 
        then
               echo "You Win"
               stakes=$(( $stakes+1 ))
	if [ $stakes -eq $max ]
	then 
		break;
	fi

        else
        echo "You loss"
	stakes=$(( $stakes-1 ))

	if [ $stakes -eq $min ]
	then
         	echo "weee"
		break;
	fi
	fi
	done
	
stakes=100
 done
}
bet 

