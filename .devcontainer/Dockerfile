FROM mcr.microsoft.com/devcontainers/java:1-21-bookworm AS dev

ARG USER=vscode
ARG ANDROID_HOME=Android/sdk
ARG ANDROID_SDK_TOOLS=$ANDROID_HOME/cmdline-tools
ARG BUILD_TOOLS_VERSION=34.0.0
ARG PLATFORM_VERSION=34
ARG COMMAND_LINE_VERSION=latest

# Dependencies
RUN apt update && apt upgrade -y
RUN apt install -y unzip wget

WORKDIR /home/$USER

RUN mkdir -p $ANDROID_SDK_TOOLS

# Android SDK
RUN wget -O sdk-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
RUN unzip sdk-tools.zip && rm sdk-tools.zip
RUN mv cmdline-tools $ANDROID_SDK_TOOLS/latest/

RUN yes | $ANDROID_SDK_TOOLS/latest/bin/sdkmanager --licenses
RUN $ANDROID_SDK_TOOLS/latest/bin/sdkmanager "build-tools;${BUILD_TOOLS_VERSION}" "platform-tools" "platforms;android-${PLATFORM_VERSION}" "sources;android-${PLATFORM_VERSION}"
RUN $ANDROID_SDK_TOOLS/latest/bin/sdkmanager --install "cmdline-tools;${COMMAND_LINE_VERSION}"

# Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable

ENV PATH $PATH:/home/$USER/$ANDROID_HOME/platform-tools:/home/$USER/flutter/bin

# Licenses
RUN flutter doctor
RUN yes | flutter doctor --android-licenses

# Start the adb daemon
RUN adb start-server
