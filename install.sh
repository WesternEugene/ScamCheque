#!/bin/bash
clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "|                  |"
echo "| 1. Termux        |"
echo "| 2. iSH           |"
echo "|                  |"
echo "| Введите 1/2:     |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg update
	pkg upgrade
	pkg install python3
	pkg install dos2unix
	pip3 install wheel
	pip3 instlall pyqiwip2p
	cp ~/ScamCheque/Cheque.py $PREFIX/bin/Cheque
	dos2unix $PREFIX/bin/Cheque
	chmod -R 777 ~/ScamCheque
	chmod 777 $PREFIX/bin/Cheque
	Cheque
else
	if [ $numb = "2" ]
	then
		apk update
		apk upgrade
		apk add python3
		apk add dos2unix
		pip3 install wheel
		pip3 install pyqiwip2p
		cp ~/ScamCheque/Cheque.py /usr/bin/Cheque
		dos2unix /usr/bin/Cheque
		chmod 777 /usr/bin/Cheque
		Cheque
	fi
fi