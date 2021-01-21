#!/bin/bash

# build api
cd src/ || exit
echo "Building api..."
multi-file-swagger index.yml > ../dist/index.json
cd ../dist/ || exit

# convert api json to yml
echo "Convert api json to yaml..."
json2yaml index.json > index.yml