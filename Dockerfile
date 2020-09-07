FROM jaokim/amigade:20190313_2205

RUN apt-get update
RUN apt-get install -y autoconf make unzip zip

RUN dep-get --update
RUN dep-get.py -i libfontconfig-2.13.1

WORKDIR /work
RUN /bin/bash