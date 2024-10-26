# Flask Camera
Simple Flask server with camera stream

## Build
```
docker build . -t flask-camera
```

## Run
```
docker run -d --restart always --device /dev/video0 -p 5000:5000 --name flask-camera-container flask-camera
```
