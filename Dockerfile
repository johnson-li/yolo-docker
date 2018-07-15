FROM nvidia/cuda:9.2-cudnn7-devel-ubuntu16.04

RUN apt-get update --fix-missing
RUN apt-get install -y libopencv-dev python-opencv 


WORKDIR /yolo
COPY darknet /yolo/darknet
COPY start.sh /yolo/start.sh
RUN cd /yolo/darknet && make


ENTRYPOINT /yolo/start.sh

