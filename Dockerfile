From centos:7

MAINTAINER Jimin Huang "huangjimin@whu.edu.cn"

RUN yum update && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache 

COPY requirements.txt ./

RUN pip install -r requirements.txt
