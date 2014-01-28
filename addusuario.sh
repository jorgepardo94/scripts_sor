#!/bin/bash
if [ "$1" == "" ]; then
	echo "debes escribir un usuario"
else

	echo Añadiendo el usuario "$1"
	echo Añadiendo el nuevo grupo "$1"
	echo Añadiendo el nuevo usuario "$1" con el grupo "$1"
	useradd $1
	echo Creando el directorio personal "/home/$1"
	mkdir /home/$1
	chown $1:$1 /home/$1
	echo Copiando los ficheros desde '/etc/skel'...
	cp /etc/skel /home/$1
	passwd $1
	echo -n "Full Name []:"
	read
	echo -n "Room Number []:"
	read
	echo -n "Phone Number []:"
	read
	echo -n "Email []:"
	read
	echo -n "¿Es correcta la informacion? [S/n]"
	read $respuesta
	if [ "$respuesta" == "n" ]; then
		userdel $1
		rm -r /home/$1
		if [ "$respuesta" == "s" ]; then
		else
			echo "respuesta erronea"
		fi
	fi
fi
	
