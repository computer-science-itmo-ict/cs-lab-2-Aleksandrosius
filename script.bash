#!/bin/bash
x=$1 
y=$2 

echo -n $(($x+$y)) $(($x-$y)) $(($x*$y))

if [[ $y -eq 0 ]]
then	
    echo " #"
elif [[ $x%$y -eq 0 ]]
then
    echo " $(($x/$y)).00"
elif [[ $x -eq 0 ]]
then
    echo " 0.00"
else
    sp=$(($x*100/$y))
    sp1=$(($sp/100))
    sp2=$(($sp%100))
    sp3="${sp2#-}"
    if [[ $x*$y -lt 0 ]] && [[ $x/$y -eq 0 ]]; then
    	echo " -$sp1.$sp3"
    else
    	echo " $sp1.$sp3"    
fi
fi
