FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

#yum erase -y libgomp && \
RUN yum clean all
RUN yum install -y gcc
RUN yum-config-manager --enable rhel-7-server-extras-rpms > /dev/null && \
    yum-config-manager --enable rhel-server-rhscl-7-rpms > /dev/null
RUN yum update -y
RUN yum install -y ansible python-pip python-devel
RUN pip install python-openstackclient python-heatclient

USER 1001
