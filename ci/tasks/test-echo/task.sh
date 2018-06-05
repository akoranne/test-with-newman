#!/bin/bash

set -e -u -x # fail fast

echo ""
echo " .. install 'newman' "
echo ""
npm install -g newman

echo ""
echo " .. Running newman tests"
echo ""

cd service-repo

# execute newman tests
newman run src/test/resources/PostmanEcho.postman_collection

echo ""
echo " Build completed!!!"
echo ""
