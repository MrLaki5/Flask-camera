## Build
docker build . -t ip-camera

## Run
docker run -d --restart always --device /dev/video0 -p 5000 --name ip-camera-container ip-camera
