# get the trained data
cd darknet
wget https://pjreddie.com/media/files/yolov3.weights

# make darknet
make

# create image
cd ..
docker build -t johnson163/yolo .

# create and start container
docker run -i -p 8080:8080 --privileged -t johnson163/yolo


