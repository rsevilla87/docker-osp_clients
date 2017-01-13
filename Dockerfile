FROM centos:latest

MAINTAINER Raul Sevilla

RUN yum -y install python-devel gcc
RUN curl -L https://bootstrap.pypa.io/get-pip.py | python -s 
RUN for pkg in python-keystoneclient python-openstackclient python-glanceclient python-ironicclient python-manilaclient python-novaclient python-neutronclient python-swiftclient; do \
pip install $pkg ;\
done

