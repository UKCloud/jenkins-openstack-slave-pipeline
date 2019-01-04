FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:3.9.57

USER root

RUN yum upgrade yum-utils -y

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null \
    --enable rhel-7-server-optional-rpms > /dev/null \
    --enable rhel-7-server-extras-rpms > /dev/null \
    --enable rhel-server-rhscl-7-rpms > dev/null

#RUN yum erase -y libgomp && \

run yum insall python python-devel
RUN python -m pip install --upgrade pip setuptools wheel

#RUN mkdir /pip
#RUN cd /pip && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py --prefix=/usr/local
RUN pip install --no-cache-dir python-openstackclient 
#&& pip install --no-cache-directory python-heatclient

RUN yum install gcc ansible -y

USER 1001