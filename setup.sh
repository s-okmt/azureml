#!/bin/bash

FILE_PATH=$1
KERNEL_NAME=$2
DISPLAY_NAME=$3

#echo $FILE_PATH
#echo $KERNEL_NAME
#echo $DISPLAY_NAME
#pwd

conda env create -f $FILE_PATH -n $KERNEL_NAME
conda install ipykernel -n $KERNEL_NAME -y

/anaconda/envs/${KERNEL_NAME}/bin/ipython kernel install --name $KERNEL_NAME --display-name "$DISPLAY_NAME" --user

