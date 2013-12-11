#!/bin/bash
git add $1
git commit -a -m "añadido fichero $1"
if [ "$2" == "bitbucket" ]; then
	origen=origin2
else 
	origen=origin
fi
git push -u $origen master
