#!/bin/bash

function handle_error() {
    ERROR_MESSAGE=$1

    echo ${ERROR_MESSAGE}
    echo "Exiting..."
    exit 1
}

USER_NAME=$(whoami)
PROJECT_NAME=$1
MAKEFILE_PATH="/home/${USER_NAME}/scripts/initc/resources/makefile"
MAIN_FILE_PATH="/home/${USER_NAME}/scripts/initc/resources/main.c"

PROJECT_DIRECTORY_ERROR="Error: directory '${PROJECT_NAME}' already exists."
MAKEFILE_ERROR="Error: file '${MAKEFILE_PATH}' not found."
MAIN_FILE_ERROR="Error: file '${MAIN_FILE_PATH}' not found."

if test -d $PROJECT_NAME; then
    handle_error "$PROJECT_DIRECTORY_ERROR"
elif ! test -f $MAKEFILE_PATH; then
    handle_error "$MAKEFILE_ERROR"
elif ! test -f $MAIN_FILE_PATH; then
    handle_error "$MAIN_FILE_ERROR"
fi


mkdir $PROJECT_NAME
cd $PROJECT_NAME

mkdir src
mkdir include
mkdir build
mkdir bin

cp $MAKEFILE_PATH .
cp $MAIN_FILE_PATH src

