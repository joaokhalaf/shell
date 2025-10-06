#!/bin/bash

LOG_DIR="./myapp"

echo "$LOG_DIR"

find $LOG_DIR -name "*.log" -print0 | while IFS= read -r -d '' arquivo; do
	echo "$arquivo"
done 
