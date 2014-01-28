#!/bin/bash
usuario=$1
resultado=$(cat /etc/passwd | grep "^$usuario:" | cut -d ":" -f6)
echo el directorio es $resultado
