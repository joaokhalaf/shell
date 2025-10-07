#!/bin/bash

LOG_DIR="./myapp"

echo "$LOG_DIR"

find $LOG_DIR -name "*.log" -print0 | while IFS= read -r -d '' arquivo; do
	grep "ERROR" $arquivo > "${arquivo}.filtered"
	grep "SENSITIVE_DATA" $arquivo >> "${arquivo}.filtered"

	sed -i 's/User password reset request with token .*/User password reset request with token REDACTED/g' "${arquivo}.filtered"
    sed -i 's/API key leaked: .*/API key leaked: REDACTED/g' "${arquivo}.filtered"
    sed -i 's/User credit card last four digits: .*/User credit card last four digits: REDACTED/g' "${arquivo}.filtered"
    sed -i 's/User session initiated with token: .*/User session initiated with token: REDACTED/g' "${arquivo}.filtered"

done 
