#!/bin/bash

read -p "Enter environment names: " envs
envs=("$envs")

echo "Updating Conda Environments ..."
for env in "${envs[@]}"; do
    echo "Updating $env ..."
    conda update -n $env --all -y
done
