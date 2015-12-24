#!/bin/bash

URL="http://Demo1-ELB-ZD4533OIEA39-1977571285.us-east-1.elb.amazonaws.com"

response_code=$(curl -s -o /dev/null -w "%{http_code}" ${URL})

if [[ "${response_code}" -eq  "200" ]]; then
    exit 0
else
    exit 1
fi
