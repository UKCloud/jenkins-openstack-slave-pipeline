FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:v3.9.51

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null --enable rhel-7-server-extras-rpms > /dev/null 

RUN yum install python-devel gcc ansible -y
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py && pip install pip==9.0.3
RUN pip install python-openstackclient 
RUN pip install python-heatclient

USER 1001

## Pip version is hardcoded to 9.0.3 as with pip versions 10 and 18 openstack clients install fails