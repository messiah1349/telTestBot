FROM ubuntu:16.04
LABEL maintainer="testBot messiah1349@gmail.com"

RUN apt-get update && apt-get install -yq \
                        python3 python3-pip htop nano git wget \
                        libglib2.0-0 autoconf automake \
                        libtool build-essential unzip \
                        libarchive-dev vim

RUN mkdir /src

COPY . /src

WORKDIR /src

RUN pip3 install -r requirements.txt

CMD python3 telbot.py
