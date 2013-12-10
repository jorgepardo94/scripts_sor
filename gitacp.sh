#!/bin/bash
git add $1
git commit -a -m "añadido fichero $1"
git push origin master
