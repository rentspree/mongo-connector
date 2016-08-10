#!/bin/bash

MONGO=`ping -c 1 mongo-cluster | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
ES=`ping -c 1 elasticsearch-clients | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`


pip install mongo-connector
pip install elastic2-doc-manager

touch /scripts/mongo-connector-installed

echo "\n\nStarting mongo-connector.."
mongo-connector --auto-commit-interval=5 -m ${MONGO}:27017 -t ${ES} -v -d elastic2_doc_manager --stdout