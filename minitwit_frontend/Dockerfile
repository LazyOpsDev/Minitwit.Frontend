FROM ubuntu:18.04

# Install Git, Curl etc.
RUN apt update
RUN apt upgrade -y
RUN apt install curl git unzip -y 


WORKDIR /home/developer

# Download Flutter SDK
RUN git clone https://github.com/flutter/flutter.git
ENV PATH "$PATH:/home/developer/flutter/bin"

RUN flutter channel beta
RUN flutter config --enable-web

RUN cd /home/developer/flutter \
 && git checkout v1.12.6

# Run basic check to download Dark SDK
RUN flutter doctor

WORKDIR /home/developer/minitwit
COPY . .
RUN flutter pub get

# Setup new user
RUN useradd -ms /bin/bash developer
USER developer