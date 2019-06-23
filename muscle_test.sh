#!/bin/bash

url=http://ec2-52-210-178-23.eu-west-1.compute.amazonaws.com
EXEC="curl -Is ${url}:5000/ | head -n -1"
EXECCMD="${EXEC}"
eval ${EXECCMD}

if [ $? -eq "0" ]; 
then
              echo "APP SERVER TEST IS SUCCESSFUL!"              
else
              echo "APP SERVER TEST IS FAILED!"
              exit 2
fi
