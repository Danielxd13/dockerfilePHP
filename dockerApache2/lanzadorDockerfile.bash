#!/bin/bash
echo "Borrar-All: 0 | Crear: 1 " 
read bul1
if [ $bul1 -eq 1 ];
	then
	echo -p "Numeros de copias: " 
	read int1
	for (( count=$int1; count>0; count-- ))
		do
		docker run -d -p 8$count:8080 --name apachephp$count apachephp 
	done
else
	echo -p "Numeros para borrar: " 
	read int1
	for (( count=$int1; count>0; count-- ))
		do
		docker rm -f apachephp$count
	done
fi





