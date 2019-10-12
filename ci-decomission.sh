#!/bin/bash

#Example showing how to remove items directly

echo "Removing your services..."
cd services
cd products
serverless remove

cd ..
cd ..
cd services
cd transactions
serverless remove

cd ..
cd ..
cd services
cd users
serverless remove

cd ..
cd ..
cd gateway
serverless remove

echo "Removal complete :)"
read