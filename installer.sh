clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "|                  |"
echo "| 1. Termux        |"
echo "| 3. iSH           |"
echo "|                  |"
echo "| Введите 1/2:     |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg update
	pkg upgrade
	pkg install python3
	pip3 install pyqiwip2p
	clear
else
	if [ $numb = "2" ]
	then
		apk update
		apk upgrade
		apk add python3
		apk add py3-pip
		pip3 install pyqiwip2p
		clear
	fi
fi