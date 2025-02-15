From ubuntu:latest

RUN apt-get update && apt-get install -y \
 python3.10 \
 python3-pip \
 git  
 # \
 # python3-yaml \
 # python3-venv

# RUN python3 -m venv /venv

# RUN /venv/bin/pip install --upgrade pip

# RUN /venv/bin/pip install pyyaml
 
# RUN pip3 install PyYAML

COPY feed.py \usr\bin\feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
