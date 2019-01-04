FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

#yum clean all && \
#yum erase -y libgomp && \
RUN yum install -y gcc yum-config-manager epel-release && \
    yum-config-manager --enable rhel-7-server-extras-rpms rhel-server-rhscl-7-rpms && \
    yum update && \
    yum install -y ansible python-pip python-devel && \
    pip install python-openstackclient && \ 
    pip install python-heatclient

USER 1001
