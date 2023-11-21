FROM ubuntu:latest

# Set the working directory
WORKDIR /STM32MPU_workspace

RUN mkdir /STM32_cube

# Copy tar.gz, .zip and .txt files
COPY . /STM32_cube

# Install X11 and xfce4
RUN apt-get update && apt-get install -y x11-apps xfce4-terminal

#change color rute
RUN echo "export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w>\[\033[00m\] '" >> ~/.bashrc

# Set the display environment variable
ENV DISPLAY=host.docker.internal:0.0

# Start xfce4-terminal
CMD ["xfce4-terminal"]
