#!/bin/sh

rm -rf out
rm -rf target

node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.html -t node_modules/jsonresume-theme-flat-custom
node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.pdf -t node_modules/jsonresume-theme-flat

mkdir -p target/resumes
mkdir -p target/vendor/css
mkdir -p target/vendor/js

cp src/index.html target
cp out/resume.html out/resume.pdf target/resumes

# css
cp node_modules/bootstrap/dist/css/bootstrap.min.css target/vendor/css

# js
cp node_modules/bootstrap/dist/js/bootstrap.min.js target/vendor/js
cp node_modules/jquery/dist/jquery.slim.min.js target/vendor/js
cp node_modules/popper.js/dist/umd/popper.min.js target/vendor/js
