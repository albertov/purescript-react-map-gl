#!/usr/bin/env bash
GEN=node_modules/.bin/purescript-react-wrapper-gen

echo "Generating..."
rm -rf src
mkdir -p src/MapboxGLReact
for f in $(find node_modules/mapbox-gl-react/src/ -name 'component.jsx'); do
  component=$(basename $(dirname $f)) 
  mkdir -p src/MapboxGLReact.${component}
  $GEN --base node_modules/mapbox-gl-react/lib -m MapboxGLReact.${component} --prefix mapbox-gl-react/lib/ -o src --default $f
  sed -i "s:lib/../src/::g" src/MapboxGLReact.${component}/Component.js
  mv src/MapboxGLReact.${component}/Component.purs src/MapboxGLReact/${component}.purs
  mv src/MapboxGLReact.${component}/Component.js src/MapboxGLReact/${component}.js
  mv src/MapboxGLReact.${component}.purs src/MapboxGLReact.purs
  sed -i "s:MapboxGLReact.${component}:MapboxGLReact:g" src/MapboxGLReact.purs
  sed -i "s:MapboxGLReact.${component}.Component:MapboxGLReact.${component}:g" src/MapboxGLReact/${component}.purs
  sed -i "s:import MapboxGLReact.${component}:import MapboxGLReact:g" src/MapboxGLReact/${component}.purs
  sed -i "s/data ::/data_ ::/g" src/MapboxGLReact/${component}.purs
  sed -i "s/data =/data_ =/g" src/MapboxGLReact/${component}.purs
  sed -i "s/options ::/options_ ::/g" src/MapboxGLReact/${component}.purs
  sed -i "s/options =/options_ =/g" src/MapboxGLReact/${component}.purs
  rmdir src/MapboxGLReact.${component}
done
