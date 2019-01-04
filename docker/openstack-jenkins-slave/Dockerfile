FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:3.9.57

USER root

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null \
    --enable rhel-7-server-optional-rpms > /dev/null \
    --enable rhel-7-server-extras-rpms > /dev/null \
    --enable rhel-server-rhscl-7-rpms > dev/null

#RUN yum erase -y libgomp && \

RUN yum install python-devel -y
#RUN python -m ensurepip --default-pip
#RUN python -m pip install --upgrade pip setuptools wheel

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py --prefix=/usr/local
RUN /usr/local/bin/pip install --no-cache-dir python-openstackclient -U root
#&& pip install --no-cache-directory python-heatclient

RUN yum install gcc ansible -y

USER 1001