FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum erase -y libgomp && \
    yum install -y python-devel gcc yum-utils vim --setopt=protected_multilib=false && \
    yum-config-manager --enable rhel-7-server-extras-rpms && \
    yum install -y ansible && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install python-openstackclient && \
    pip install python-heatclient

USER 1001
