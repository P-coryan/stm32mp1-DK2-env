@echo off
REM Allow Docker to make connections to the X11 server
echo Allowing Docker to connect to X11 server...
xhost +local:docker

REM Build the Docker image
echo Building Docker image...
docker build -t ubuntu_gui .

REM Run the Docker container
echo Running Docker container...
docker run --name first_GUI -e DISPLAY=host.docker.internal:0.0 -it ubuntu_gui

pause