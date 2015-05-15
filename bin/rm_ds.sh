#!/bin/bash
# 删除当前目录下面所有 .DS_Store
find $PWD -name ".DS_Store" -exec rm -f {} \;
