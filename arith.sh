#!/bin/bash

echo "Answer the following problems."
while :
do
	val1=$(($RANDOM%10))
	val2=$(($RANDOM%10))
	oper=$(($RANDOM%3))
	ans=0
	if [ $oper -eq 0 ]
	then
		ans=$(($val1+$val2));
		echo $val1 "+" $val2;
	elif [ $oper -eq 1 ]
	then
		if [ $val1 -gt $val2 ]
		then
			ans=$(($val1-$val2));
			echo $val1 "-" $val2;
		else
			ans=$(($val2-$val1));
			echo $val2 "-" $val1;
		fi
	else	
		ans=$(($val1*$val2));
		echo $val1 "*" $val2;
	fi
	Tinit="$(($(date +%s)-T))"
	read -p "Answer: " userans
	if [ $ans -eq $userans ]
	then
		echo "True";
	else
		echo "False";
	fi 
	Tfinal="$(($(date +%s)-T))"
	echo "Time to complete:" $(($Tfinal-$Tinit))
	echo ""
done
