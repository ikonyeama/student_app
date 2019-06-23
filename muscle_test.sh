#!/bin/bash

set x
url="http://ec2-52-210-178-23.eu-west-1.compute.amazonaws.com"
curl ${url}/ -s -o /dev/null -w "response_code: ${http_code}"
RESULT="$?"

if [ "$RESULT" -eq "0" ]; 
then
    echo "APP SERVER TEST IS SUCCESSFUL!"              
else
    echo "APP SERVER TEST FAILED!"
fi
