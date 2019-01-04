FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:3.9.57

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > dev/null \
    --enable rhel-7-server-optional-rpms \
    --enable rhel-7-server-extras-rpms \
    --enable rhel-server-rhscl-7-rpms

RUN yum update -y
#RUN yum erase -y libgomp && \

RUN yum install python-pip python-wheel -y 
RUN yum upgrade python-setuptools -y

#RUN mkdir /pip
#RUN cd /pip && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py
RUN pip install --no-cache-dir python-openstackclient 
#&& pip install --no-cache-directory python-heatclient

RUN yum install gcc ansible -y

USER 1001