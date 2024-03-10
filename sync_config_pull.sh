#!/bin/bash
dst_dir=/root/autodl-tmp/d2l
if [ ! -d $dst_dir ]; then
  echo "The directory $dst_dir does not exist."
  exit 1
fi

cd $dst_dir

WORKDIR="../_remote_config"
mkdir -p $WORKDIR
cd $WORKDIR
if [ ! -d ".git" ]; then
    git clone https://github.com/JiepengTan/test_mb.git ./
fi
git pull origin main
cd -

dirs=("src" "pytorch" )

for dir in "${dirs[@]}"; do
  rm -rf "./$dir"
  cp -rf "$WORKDIR/$dir" .
done

