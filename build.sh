#!/bin/sh

rm -rf out
node_modules/hackmyresume/dist/cli/index.js BUILD src/resume.json TO out/resume.all -t node_modules/jsonresume-theme-flat
cp out/resume.html out/resume.pdf docs