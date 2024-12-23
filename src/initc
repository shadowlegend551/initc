#!/bin/bash


# FUNCTION DEFINITIONS
function handle_error() {
    ERROR_MESSAGE=$1

    echo ${ERROR_MESSAGE}
    echo "Exiting..."
    exit 1
}


function log_folder_creation() {
    RELATIVE_FOLDER_PATH=$1

    echo "Created folder $(pwd)/$1"
}


function log_file_creation() {
    RELATIVE_FILE_PATH=$1

    echo "Created file $(pwd)/$1"
}


# CONSTANT DEFINITIONS
USER_NAME=$(whoami)
PROJECT_NAME="$1"
SUBFOLDERS=("bin" "build" "include" "src")
MAKEFILE_PATH="/home/${USER_NAME}/scripts/initc/resources/makefile"
MAIN_FILE_PATH="/home/${USER_NAME}/scripts/initc/resources/main.c"


PROJECT_DIRECTORY_ERROR="Error: directory '${PROJECT_NAME}' already exists."
MAKEFILE_ERROR="Error: file '${MAKEFILE_PATH}' not found."
MAIN_FILE_ERROR="Error: file '${MAIN_FILE_PATH}' not found."


# Test for errors.
if test -d "$PROJECT_NAME"; then
    handle_error "$PROJECT_DIRECTORY_ERROR"
elif ! test -f $MAKEFILE_PATH; then
    handle_error "$MAKEFILE_ERROR"
elif ! test -f $MAIN_FILE_PATH; then
    handle_error "$MAIN_FILE_ERROR"
fi


mkdir "$PROJECT_NAME"
log_folder_creation "$PROJECT_NAME"
cd "$PROJECT_NAME"
echo "changed pwd to $(pwd)"


for folder in ${SUBFOLDERS[@]}; do
    mkdir $folder
    log_folder_creation $folder
done


cp $MAKEFILE_PATH .
log_file_creation makefile
cp $MAIN_FILE_PATH src
log_file_creation main.c

echo "Project creation successful!"

