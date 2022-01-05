FROM ubuntu:20.04

LABEL authors="Rafael Sene - rpsene@br.ibm.com"

RUN apt-get update; apt-get -y install \
jq curl wget pwgen python3 python3-pip libpq-dev python-dev build-essential \
pip3 install psycopg2; pip3 install pytz

RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh; 

RUN ibmcloud plugin install --all -f