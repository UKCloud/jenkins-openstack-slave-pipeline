FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum clean all && \
    yum erase -y libgomp && \
    yum install -y yum-config-manager && \
    yum-config-manager --enable rhel-7-server-extras-rpms && \
    subscription-manager repos --enable rhel-server-rhscl-7-rpms && \
    yum install -y ansible python27-python-pip && \
    pip install python-openstackclient && \ 
    pip install python-heatclient

USER 1001
