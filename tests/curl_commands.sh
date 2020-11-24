#!/bin/bash

echo
echo 'API without model should return {"data":[0]} but model is already in place so an error is returned instead.'

curl -X POST "http://localhost:8000/predict" \
              -H "accept: application/json" \
              -H "Content-Type: application/json" \
              -d "{\"data\":[[0]]}"

echo
echo


echo
echo 'API with 13 features of data.'
curl -X POST "http://localhost:8000/predict" \
             -H "accept: application/json" \
             -H "Content-Type: application/json" \
             -d "{\"data\":[[0.00632,18.0,2.31,0.0,0.538,6.575,65.2,4.09,1.0,296.0,15.3,396.9,4.98]]}"

echo
echo
