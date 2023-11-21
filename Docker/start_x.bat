@echo off
REM Allow Docker to make connections to the X11 server
echo Allowing Docker to connect to X11 server...
xhost +local:docker

REM Build the Docker image
echo Building Docker image...
docker build -t ubuntu_gui .

REM Run the Docker container
echo Running Docker container...
docker run --name p_coryan_gui -e DISPLAY=host.docker.internal:0.0 -v %USERPROFILE%\STM32MPU_workspace:/STM32MPU_workspace -it ubuntu_gui

pause