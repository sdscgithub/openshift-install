
PYTHON3_EXECUTABLE=$(ls /usr/bin/python3.* | awk '{print $1}' | head -n 1)
# [ "$(alternatives --list | grep -i python)" == "" ] && 
alternatives --install /usr/bin/python python $PYTHON3_EXECUTABLE 2

