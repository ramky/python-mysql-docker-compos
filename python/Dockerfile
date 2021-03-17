FROM python:2.7
RUN echo exit 0 > /usr/sbin/policy-rc.d
WORKDIR /usr/src/app
RUN pip install mysql-connector-python-rf
COPY . .
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install default-mysql-client