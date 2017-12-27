#!/usr/bin/env bash
GEN=node_modules/.bin/purescript-react-wrapper-gen

echo "Generating..."
rm -rf src
mkdir -p src/ReactMapGL
find node_modules/react-map-gl/src/ -name '*.js' \
  | xargs $GEN --base node_modules/react-map-gl/lib -m ReactMapGL --prefix react-map-gl/lib/ -o src --default

find src -name '*.js' -exec sed -i "s:lib/../src/:dist/:g" {} \;
