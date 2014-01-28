#!/bin/bash
usuario=$1
home_usuario=$(cat /etc/passwd | grep "^$usuario:" | cut -d ":" -f6)
rm -r $home_usuario
