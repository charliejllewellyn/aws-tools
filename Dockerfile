FROM library/centos

RUN yum install -y epel-release
RUN yum install -y python36 python36-setuptools
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python36 get-pip.py
