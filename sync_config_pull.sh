#!/bin/bash
dst_dir=/root/autodl-tmp/d2l
if [ ! -d $dst_dir ]; then
  echo "The directory $dst_dir does not exist."
  exit 1
fi

git pull origin main
