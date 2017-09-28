FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN subscription-manager repos --enable=rhel-7-server-extras-rpms && \
    yum install python-devel gcc -y ansible openshift-ansible vim && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install python-openstackclient && \
    pip install python-heatclient

USER 1001
