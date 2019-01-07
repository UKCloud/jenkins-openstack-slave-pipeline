FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:3.9.57

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null \
                       --enable rhel-7-server-extras-rpms > /dev/null 

RUN yum install python-devel gcc ansible -y

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py --prefix=/usr/local
RUN pip install pip==10.0.1
RUN pip install --no-cache-dir python-openstackclient python-heatclient

USER 1001

## Pip version is hardcoded to 10.0.1 as with versions 18 openstack clients install fails
