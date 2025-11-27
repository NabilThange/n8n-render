FROM n8nio/n8n:latest

USER root

# Install FFmpeg, Python3, yt-dlp
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    wget \
    && pip3 install --break-system-packages yt-dlp

USER node
