# Install Operating system and dependencies
FROM ubuntu:22.04

RUN apt-get update 
RUN apt-get install -y curl git wget unzip clang cmake git ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev

RUN apt-get clean

# download Flutter SDK from Flutter Github repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set flutter environment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Run flutter doctor
RUN flutter doctor

# Enable flutter web
RUN flutter channel master
RUN flutter upgrade
