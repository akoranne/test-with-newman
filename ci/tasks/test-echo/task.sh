#!/bin/bash

set -e # fail fast
set -x # print commands

echo ""
echo " .. upgrading 'npm' "
echo ""
npm install -g npm

echo ""
echo " .. install 'newman' "
echo ""
npm install -g newman

echo ""
echo " .. Running newman tests"
echo ""

cd service-repo

# execute newman tests
newman run PostmanEcho.postman_collection

echo ""
echo " Build completed!!!"
echo ""
