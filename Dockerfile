From ubuntu:latest

RUN apt-get update && apt-get install -y \
 python3.10 \
 python3-pip \
 git \
 build-essential \
 libssl-dev \
 libffi-dev \
 python3-dev && \
 pip3 install --upgrade pip && \
 pip3 install PyYAML
 
RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
