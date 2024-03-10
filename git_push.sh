#!/bin/bash
dst_dir=/root/autodl-tmp/d2l
if [ -d $dst_dir ]; then
  echo "The directory $dst_dir exist."
  exit 1
fi

git add .
git commit -m "Auto commit: $(date)"
git push origin main --force





