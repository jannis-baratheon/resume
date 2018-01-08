#!/bin/sh

# clean
rm -rf out
rm -rf target

# build resume
node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.html -t node_modules/jsonresume-theme-flat-custom
node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.pdf -t node_modules/jsonresume-theme-flat

# create target directory structure
mkdir -p target/resumes
mkdir -p target/css
mkdir -p target/js
mkdir -p target/vendor/css
mkdir -p target/vendor/js

cp src/index.html target
cp src/style.css target/css
cp src/script.js target/js
cp out/resume.html out/resume.pdf target/resumes

# css
cp node_modules/bootstrap/dist/css/bootstrap.min.css target/vendor/css

# js
cp node_modules/bootstrap/dist/js/bootstrap.min.js target/vendor/js
cp node_modules/jquery/dist/jquery.slim.min.js target/vendor/js
cp node_modules/popper.js/dist/umd/popper.min.js target/vendor/js
