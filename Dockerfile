from registry.cn-chengdu.aliyuncs.com/ai-test20230512/pytorch:1.8.1-cuda11.1-ubuntu20.04

RUN sudo sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN sudo sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN sudo apt-get update && sudo apt-get install -y g++

WORKDIR /app/Zeqiang-Lai-DragGAN
USER user:user

COPY --chown=user:user . .

RUN pip install -r requirements.txt

CMD ["python", "gradio_app.py"]