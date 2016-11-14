#!/bin/bash

MONGO=`ping -c 1 mongo-cluster | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
ES=`ping -c 1 es-clients | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongo-connector --auto-commit-interval=5 -m ${MONGO}:27017 -t ${ES} -v -d elastic2_doc_manager --stdout
