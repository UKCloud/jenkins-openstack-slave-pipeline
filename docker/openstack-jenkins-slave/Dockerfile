FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:3.9.57

USER root

RUN yum-config-manager --enable rhel-7-server-rpms/7Server/x86_64 > dev/null \
    --enable rhel-7-server-extras-rpms > /dev/null \
    --enable rhel-server-rhscl-7-rpms > /dev/null

RUN yum clean all && yum update -y
#RUN yum erase -y libgomp && \
RUN yum install gcc python python-devel ansible -y

RUN mkdir /pip
RUN cd /pip && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py
RUN pip install --no-cache-dir python-openstackclient 
#&& pip install --no-cache-directory python-heatclient

USER 1001