#!/bin/bash
dst_dir=/root/autodl-tmp/d2l
if [ ! -d $dst_dir ]; then
  echo "The directory $dst_dir does not exist."
  exit 1
fi

cd $dst_dir

git pull origin main
cd -

cp -rf $WORKDIR/scripts/* .

dirs=("configs" "tools" "lib")

for dir in "${dirs[@]}"; do
  rm -rf "./$dir"
  cp -rf "$WORKDIR/$dir" .
done


cp -rf $WORKDIR/configs/test.json ./examples/test.json 
