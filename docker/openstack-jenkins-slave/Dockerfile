FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null --enable rhel-7-server-extras-rpms > /dev/null --enable rhel-7-server-ansible-2.9-rpms > /dev/null
RUN yum repolist all
RUN yum list ansible --show-duplicates
RUN yum install python-devel ansible gcc wget -y
RUN yum update ansible
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && chmod 700 epel-release-latest-7.noarch.rpm && rpm -i epel-release-latest-7.noarch.rpm
RUN yum install python36 python36-setuptools -y && easy_install-3.6 pip && pip install --upgrade pip
RUN pip install python-openstackclient python-heatclient

USER 1001
