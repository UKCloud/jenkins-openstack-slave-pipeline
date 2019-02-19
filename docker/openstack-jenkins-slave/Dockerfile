FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null --enable rhel-7-server-extras-rpms > /dev/null

RUN yum install python-devel gcc ansible wget -y
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && chmod 700 epel-release-latest-7.noarch.rpm && rpm -i epel-release-latest-7.noarch.rpm

RUN rm -fr /var/cache/yum/*
RUN yum clean all

RUN yum install python36 python36-setuptools -y && easy_install-3.6 pip && pip install --upgrade pip

RUN cd /root && pip install python-openstackclient python-heatclient

RUN cd /home/jenkins

USER 1001
