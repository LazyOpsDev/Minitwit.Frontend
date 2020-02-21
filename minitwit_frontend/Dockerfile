FROM ubuntu:18.04 AS build-env

# Install Git, Curl etc.
RUN apt update
RUN apt upgrade -y
RUN apt install curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa lib32stdc++6 python3 -y 
RUN apt-get clean

WORKDIR /home/developer

# Download Flutter SDK
RUN git clone https://github.com/flutter/flutter.git
ENV PATH "$PATH:/home/developer/flutter/bin"

RUN flutter channel beta
RUN flutter config --enable-web

# Run basic check to download Dark SDK
RUN flutter doctor

WORKDIR /home/developer/minitwit
COPY . .
RUN flutter build web --profile

FROM nginx
COPY --from=build-env /home/developer/minitwit/build/web /usr/share/nginx/html
