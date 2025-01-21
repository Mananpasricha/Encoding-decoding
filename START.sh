#!/bin/bash

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 is not installed. Please install Python3 to run this script."
    exit
fi
# Loading animation function
loading_animation() {
    animation="|/-\\"
    for i in {1..10}
    do
        echo -ne "\r${animation:i%${#animation}:1}"
        sleep 0.1
    done
    echo -ne "/r"
}

loading_animation



#runing the script
python3 MAIN.py 

