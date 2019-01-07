FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null --enable rhel-7-server-extras-rpms > /dev/null 

RUN yum install python-devel gcc ansible -y

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py && pip install pip==10.0.1
RUN pip install --no-cache-dir python-openstackclient 
RUN pip install -no-cache-dir python-heatclient

USER 1001

## Pip version is hardcoded to 10.0.1 as with versions 18 openstack clients install fails
