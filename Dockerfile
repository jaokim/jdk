FROM jaokim/amigade:20190313_2205

ENV http_proxy=http://www-proxy.us.oracle.com:80
ENV https_proxy=http://www-proxy.us.oracle.com:80
ENV no_proxy=localhost,127.0.0.1,oracle.com


RUN apt-get update
RUN apt-get install -y autoconf make unzip zip 
RUN apt-get install -y gcc g++
COPY amiga-dependencies.json /etc/amiga-dependencies.json

#RUN dep-get.py --update --verbose
RUN dep-get.py --verbose -i libfontconfig-2.13.1
RUN dep-get.py --verbose -i libdl
RUN dep-get.py --verbose -i https://github.com/jaokim/aros-stuff/releases/download/1.0/pthreads.lha
RUN dep-get.py --verbose -i Libffi
# -f /jamiga-deps.json

WORKDIR /work
RUN /bin/bash