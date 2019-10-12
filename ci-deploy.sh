#!/bin/bash

#Example showing how to deploy items directly

echo "Creating API Gateway..."
cd gateway
serverless deploy
sleep 5s

echo "Creating your services..."
cd ..
cd services
cd products
serverless deploy
sleep 5s

cd ..
cd transactions
serverless deploy
sleep 5s

cd ..
cd users
serverless deploy
sleep 5s

echo "Press any key to continue"
read