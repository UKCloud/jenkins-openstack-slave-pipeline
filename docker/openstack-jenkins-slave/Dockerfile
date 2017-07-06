FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum install python-devel gcc -y ansible openshift-ansible && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install python-openstackclient && \
    pip install python-heatclient

USER 1001
