#!/bin/bash	
str=""

while test "$str" != "5"
do

echo "---- MENU ----"
echo "1. Information about the author"
echo "2. Calculate the mathematical expression"
echo "3. Copying files with your extension to the folder <<BackUp>>"
echo "4. Enter an username and check it"
echo "5. Exit"
echo "--------------"

echo -n "Chose a menu item:"
read str

if test $str = "1"
then
echo "Vorobiov Vladislav Alekseevich, ITP-11"
fi
 
if test $str = "2"
then
echo -n "Enter your number in the class register:"
read n
echo -n "Enter a number of your computer:"
read nc
echo -n "Enter your age:"
read a
x=$(( ($n + $nc) * $a ))
echo "Result of the expression (n + nc) * a is $x" 
fi

if test $str = "3"
then
echo -n "Enter file extension:"
read ext
echo -n "Enter file location:"
read loc

cp $loc/*.$ext /tmp/BackUp/
echo "Files are successfully copied!"

fi

if test $str = "4"
then
echo -n "Enter an username:"
read un
if test "$un" = `whoami`
then
echo "true"
else
echo "false"
fi
echo "4"
fi

done
