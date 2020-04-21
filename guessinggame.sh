#!/bin/bash
echo "*** Guessing game bash script ***"

guessing_file_count(){
echo "inside function"
answer=`ls -lrt|grep -v '^total 0'|wc -l`
while true;
do
echo "please enter your guess number"
read number
if [ $number -lt $answer ]
then
echo "your guess is less than exact value"
echo "Try Again"

elif [ $number -gt $answer ]
then
echo "your guess is grater than exact value"
echo "Try Again"

else
echo "congrts ,your guessed exact value"
break;
fi
done
}
echo "guess the file count in current directory "
guessing_file_count
