FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y libgtk-3-0 libglib2.0-0 libc6 libstdc++6 libunwind8 msttcorefonts
RUN apt-get install -y xauth iproute2 iputils-ping
#RUN apt-get upgrade
RUN groupadd -g 1001 laura
RUN useradd -d /home/laura -s /bin/bash -m laura -u 1001 -g 1001
USER laura
COPY entrypoint.sh /entrypoint.sh
ENV HOME /home/laura
#CMD /opt/LehrerOffice/LehrerOffice
entrypoint /entrypoint.sh
