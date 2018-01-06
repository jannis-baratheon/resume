#!/bin/sh

rm -rf out
node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.html -t node_modules/jsonresume-theme-flat-custom
node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.pdf -t node_modules/jsonresume-theme-flat
cp out/resume.html out/resume.pdf docs