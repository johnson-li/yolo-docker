YOLO-DOCKER
===

This project install a YOLO programme inside a container. The programme monitors on the webcam and perform the computer vision task. The result is shown in a web page.

ENVIRONMENT
===

The docker is supposed to work on any docker platform that supports CUDA. My environment is as follow:

- OS version: Ubuntu 16.04
- Docker version: 17.06.2-ee-14
- CUDA version: V9.1.85

And you need a webcam attached to the host machine.

SETUP
===

1. Install CUDA 

	* Download CUDA from this [link](https://developer.nvidia.com/cuda-downloads). Install CUDA according to the instruction 

2. Install Docker

	* Follow the guid on this [page](https://docs.docker.com/install/linux/docker-ce/ubuntu/) to install docker.

3. Clone the code and start the programme

	* `git clone https://github.com/johnson-li/yolo-docker.git`
	* `cd yolo-docker && ./init.sh` 
	* Note: The script `init.sh` compiles the docker image automatically. You can also access the image on [docker hub](https://hub.docker.com/r/johnson163/yolo/)

4. View in web browser
	* Visit [http://localhost:8080](http://localhost:8080) in your web browser. You will see the video with objects detected. The docker container closes when you close the web page.