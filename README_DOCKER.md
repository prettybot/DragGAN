### how to deploy
docker build -t zeqiang-lai-draggan --no-cache=true .
docker run -it --gpus all -p 8005:7860 zeqiang-lai-draggan

open http://localhost:8005 in browser