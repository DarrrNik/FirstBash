#!/bin/bash

if [ $# = 1 ]; then
	if [ $1 = "-help" ]; then
		echo "После имени команды введите три числа, они будут отображать коэффициенты квадратного уравнения, a, b и с соответсвенно. При вводе флагов: -help; скрипт не требует коэффициентов, и их ввод вызовет ошибку."
		exit 2
	fi
fi

if [ $# -gt 3 ]; then
	echo "Слишком много параметров"
	exit 1
fi

a=$1
b=$2
c=$3
d=$(($b * $b - 4 * $a * $c))

res=0

if [ $d -gt 0 ]; then 
	res=2
elif [ $d = 0 ]; then 
	res=1
else
	res=0
fi

echo $res > /home/darya/'Рабочий стол'/out.txt

exit 0
