#!/bin/bash
pid=$1
nice=$(ps -eo pid,nice | grep -P "^\s*$pid " | cut -c7-9)
echo "El valor nice es $nice "
if [ "$nice" -ge 0 ]; then
	echo "El numero es 0 o mayor"
	quantum=$[(20-$nice)*5]
else
	echo "El numero es menor que 0"
	quantum=$[(20-$nice)*20]
fi

echo "El quantum es $quantum"

