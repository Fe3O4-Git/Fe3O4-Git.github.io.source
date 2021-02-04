#!/bin/fish
git add .
git commit -m $argv
git push origin master --force
hugo
cd public
git add .
git commit -m $argv
git push origin master --force
cd ..
