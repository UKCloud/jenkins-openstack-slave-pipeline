FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

COPY plugins.txt /opt/openshift/configuration/plugins.txt
USER root

RUN yum install python-devel gcc -y ansible openshift-ansible vim && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install python-openstackclient && \
    pip install python-heatclient

RUN /usr/local/bin/install-plugins.sh /opt/openshift/configuration/plugins.txt

USER 1001
