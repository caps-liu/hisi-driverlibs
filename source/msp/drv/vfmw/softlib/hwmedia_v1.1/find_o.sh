#!/bin/sh
 echo include $1 .o > ttt.txt
 
# __aeabi_ldivmod
 
for input in `find -name "*.o" | sort -d`
do
	readelf -s $input | grep $1
	if [ $? == "0" ]
	then
		echo $input >> ttt.txt 
	fi
done

echo Finished find!