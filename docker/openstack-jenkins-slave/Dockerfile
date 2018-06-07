FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum erase -y libgomp && \
    yum install -y python-devel gcc yum-utils vim --setopt=protected_multilib=false && \
    yum-config-manager --enable rhel-7-server-extras-rpms && \
    yum install -y ansible && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install pip==9.0.3 && \
    pip -v install python-openstackclient && \
    pip -v install python-heatclient

USER 1001

## pip version is currently hardcoded to 9.0.3 because install of python-openstackclient fails with pip 10
