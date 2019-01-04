FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:3.9.57

USER root

#yum erase -y libgomp && \
RUN yum clean all && yum install -y gcc
RUN yum-config-manager --enable rhel-7-server-extras-rpms > /dev/null && yum-config-manager --enable rhel-server-rhscl-7-rpms > /dev/null
RUN yum update -y
RUN yum install -y ansible 

RUN mkdir /pip
RUN cd /pip && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py

RUN pip install --no-cache-dir python-openstackclient && pip install --no-cache-directory python-heatclient

USER 1001
