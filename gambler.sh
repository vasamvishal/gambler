#Welcome to the system
read -p "Enter the no of days:" days
function bet()
{
stakes=100
for (( count=0;count<$days;count++ ))
do
while [ $stakes != 0 ]
do
	echo "echo"
	stakes=$(( $stakes-1 ))
         echo $stakes
done
stakes=100

done
}

bet 
