#!/bin/bash
git rm $1
git commit -a -m "borrado $1"
git push origin master
