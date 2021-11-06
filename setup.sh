#!/bin/bash

echo "Building..."

if  ! hash gdb ; then
	echo "Could not find gdb in $PATH"
	exit
else
	echo "An instillation of gdb was found"
fi

if [ -f "~/.gdbinit" ];
then
	echo ".gdbinit file found."
else
	touch ~/.gdbinit
fi
<<<<<<< HEAD
#echo "source gdb-stackvis/stackvis.py" >> ~/.gdbinit # Runs the proper file for execution. If this is inserted into .gdbinit, it will always start.
if [ ! grep -q source gdb-stackvis/stackvis.py "~/.gdbinit" ];then #checks to see if the string already exists in .gdbinit. If it does DON'T DO IT AGAIN!!
	echo "source ./gdb-stackvis/stackvis.py" >> ~/.gdbinit 
else
	echo "Already configured!."
fi

echo "DONE!"
=======
echo "source gdb-stackvis/stackvis.py" >> ~/.gdbinit # Runs the proper file for execution. If this is inserted into .gdbinit, it will always start.
echo "DONE!!! DO NOT RUN THIS .sh FILE AGAIN. YOU CAN SAFELY DELETE THIS FILE."
>>>>>>> dce76c8e907a16de9614ae5eef38d93ded8ed2b1
