# base image
FROM python:3.6
MAINTAINER muxistudio <muxistudio@qq.com>
# environment setting
ENV DEPLOY_PATH /luck2018
# run command in container
RUN mkdir -p $DEPLOY_PATH
WORKDIR $DEPLOY_PATH
# first add requirements.txt to container
Add requirements.txt requirements.txt
# install
RUN pip install --index-url http://pypi.doubanio.com/simple/ -r requirements.txt --trusted-host=pypi.doubanio.com
# RUN pip install -r requirements.txt
# add all !
Add . .
