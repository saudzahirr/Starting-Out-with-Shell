# shell-scripting
Starting out with shell scripting

## Basic
### Shebang Line
```shell
#!/bin/bash
```
### Comments
```shell
# Hello, world!
```
### Variable
```shell
echo "Enter your name:"
read username
greet="Hello, $username! Welcome to shell scripting class!"
echo $greet
```
### Controls
#### Conditions
```shell
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

# $0   Argument 0 i.e. the command that’s used to run the script
# $1   First argument (change number to access further arguments)
# -eq  Equality check
# -ne  Inequality check
# -lt  Less Than
# -le  Less Than or Equal
# -gt  Greater Than
# -ge  Greater Than or Equal
```
#### Loops
```shell
for i in {1..5}; do
    echo "Iteration $i"
done


count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done
```
### Functions
function func() {
    echo "Have a great day!"
}
func

## Execution
Before running your file make it executable by running the following command:
```shell
chmod +x test.sh
```
After that run your script using the command given below:
```shell
./your_script.sh
```
