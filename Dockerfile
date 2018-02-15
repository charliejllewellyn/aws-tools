FROM library/centos

RUN yum install -y epel-release
RUN yum install -y python36 python36-setuptools
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python36 get-pip.py
RUN echo 'export PATH=~/.local/bin:$PATH' >> ~/.bash_profile
RUN pip3 install awscli --upgrade
RUN yum install -y vim git
