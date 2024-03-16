ps -ef | grep jupyter | awk '{print $2}' | xargs kill -9
nohup jupyter notebook --allow-root &
