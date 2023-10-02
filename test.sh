#!/bin/bash

# Input/Ouput

echo "Hello, World!"


echo "Enter your name:"
read username


# Variable.

greet="Hello, $username! Welcome to shell scripting class!"
echo $greet

# &&   Logical AND

# $0   Argument 0 i.e. the command that’s used to run the script
# $1   First argument (change number to access further arguments)
# -eq  Equality check
# -ne  Inequality check
# -lt  Less Than
# -le  Less Than or Equal
# -gt  Greater Than
# -ge  Greater Than or Equal


# Controls and Loops.

x=2
y=3

if [ $x -eq $y ]
then
        echo "x = y"

elif [ $x -lt $y ]
then    echo "x < y"

elif [ $x -gt $y ]
then    echo "x > y"

else
        echo "Not a number"
fi

for i in {1..5}; do
    echo "Iteration $i"
done

count=1

while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done

# Functions.

function func() {
    echo "This is a function!"
}
func
