#! /usr/bin/bash

num=2
errores=0
aciertos=0

echo Comienza test

while [ $num -le 1000 ]
do
    echo -n $num ... 
    diff -wB <( echo $num | ./tarea1) salida_$num.txt >/dev/null 2>&1
    if [ $? -ne 0 ]
    then
	echo MAL
	((errores++))
    else
	echo BIEN
	((aciertos++))
    fi
    ((num++))
done

echo
echo Test finalizado
echo $aciertos aciertos
echo $errores errores
    


