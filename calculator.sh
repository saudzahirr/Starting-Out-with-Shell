#!/bin/bash

echo """Calculator.

1. + (addition)
2. - (subtraction)
3. * (multiplication)
4. / (division)
"""

read -p "Enter Operation: " operation

if [[ "$operation" == "+" ]]; then
    read -p "Enter x: " x
    read -p "Enter y: " y
    add() {
        echo "x + y = $(echo "scale=10; $x + $y" | bc)"
    }
    add

elif [[ "$operation" == "-" ]]; then
    read -p "Enter x: " x
    read -p "Enter y: " y
    sub() {
        echo "x - y = $(echo "scale=10; $x - $y" | bc)"
    }
    sub

elif [[ "$operation" == "*" ]]; then
    read -p "Enter x: " x
    read -p "Enter y: " y
    mul() {
        echo "x*y = $(echo "scale=10; $x * $y" | bc)"
    }
    mul

elif [[ "$operation" == "/" ]]; then
    read -p "Enter x: " x
    read -p "Enter y: " y
    div() {
        echo "x/y = $(echo "scale=10; $x / $y" | bc)"
    }
    div

else
    echo "Syntax Error!"
fi

