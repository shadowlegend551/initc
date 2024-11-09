#!/bin/bash

RESOURCE_DIR="resources"
PROJECT_DIR=$1
LANGUAGE=$2
echo $RESOURCE_DIR

mkdir $PROJECT_DIR
cd $PROJECT_DIR

case ${LANGUAGE} in
    C)
        cp ${RESOURCE_DIR}/* $PROJECT_DIR
        ;;
    *)
        echo "Unknown language" $LANGUAGE
        ;;
esac
