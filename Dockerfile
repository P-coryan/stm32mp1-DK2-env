FROM ubuntu:latest

# Install X11 and xfce4
RUN apt-get update && apt-get install -y x11-apps xfce4-terminal

# Set the display environment variable
ENV DISPLAY=host.docker.internal:0.0

# Start xfce4-terminal
CMD ["xfce4-terminal"]
