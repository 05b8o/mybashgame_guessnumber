#!/bin/bash

while true
do
    mynumber=$(($RANDOM%10000))
    if [ $mynumber -ge 1000 ] ; then
        q1=${mynumber:0:1}
        q2=${mynumber:1:1}
        q3=${mynumber:2:1}
        q4=${mynumber:3:1}

        if [ $q1 != $q2 ] && [ $q1 != $q3 ] && [ $q1 != $q4 ] && [ $q2 != $q3 ] && [ $q2 != $q4 ] && [ $q3 != $q4 ] ; then
            break
        fi
    fi
done
#echo $mynumber

myindex=0
while [ $myindex -lt 8 ]
do
    read -n 4 -p "input your number:" inputnu
    anumber=0
    bnumber=0
    p1=${inputnu:0:1}
    p2=${inputnu:1:1}
    p3=${inputnu:2:1}
    p4=${inputnu:3:1}


    if [ $q1 == $p1 ] ;then
        ((anumber++))
    elif [ $q1 == $p2 ] || [ $q1 == $p3 ] || [ $q1 == $p4 ];then
        ((bnumber++))
    fi       

    if [ $q2 == $p2 ] ;then
        ((anumber++))
    elif [ $q2 == $p1 ] || [ $q2 == $p3 ] || [ $q2 == $p4 ];then
        ((bnumber++))
    fi

    if [ $q3 == $p3 ] ;then
        ((anumber++))
    elif [ $q3 == $p1 ] || [ $q3 == $p2 ] || [ $q3 == $p4 ];then
        ((bnumber++))
    fi

    if [ $q4 == $p4 ] ;then
        ((anumber++))
    elif [ $q4 == $p1 ] || [ $q4 == $p2 ] || [ $q4 == $p3 ];then
        ((bnumber++))
    fi
    echo " "

    echo $anumber "A" $bnumber "B"
    if [ $anumber -eq 4 ] ; then
        break
    fi

    ((myindex++))
done

if [ $myindex -ge 8 ] ;then
    echo you lose answer is $mynumber
else
    echo you win!!
fi


