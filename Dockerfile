FROM nvidia/cuda:12.0.0-cudnn8-runtime-ubuntu22.04

ARG FASTCHAT_VERSION="main"

RUN --mount=type=cache,target=/var/cache/apt \
    apt-get update ; \
    apt-get upgrade -y ; \
    apt-get install -y git python3-dev python3-pip

RUN pip3 install --upgrade pip


RUN git clone -b "$FASTCHAT_VERSION" --depth 1 https://github.com/lm-sys/FastChat fastchat

WORKDIR /fastchat
RUN pip3 install .

# e.g. "/model/vicuna-7b-1.1"
ENV MODEL_PATH="/model/llama-7b-hf"

# cpu, cuda, mps
ENV FASTCHAT_DEVICE="cpu"
ENV FASTCHAT_GPU_COUNT=0

ENV FASTCHAT_CONTROLLER_HOST=127.0.0.1
ENV FASTCHAT_CONTROLLER_PORT=21001
ENV FASTCHAT_CONTROLLER_ADDRESS=http://$FASTCHAT_CONTROLLER_HOST:$FASTCHAT_CONTROLLER_PORT

ENV FASTCHAT_WORKER_HOST=127.0.0.1
ENV FASTCHAT_WORKER_PORT=21002

ENV FASTCHAT_API_HOST=127.0.0.1
ENV FASTCHAT_API_PORT=7500

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
