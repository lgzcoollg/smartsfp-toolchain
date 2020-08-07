FROM metrotek/debian8

RUN apt-get update -y
RUN apt-get install -y vim git apt-transport-https wget

RUN dpkg --add-architecture armhf
RUN echo "deb https://emdebian.metrotek.center jessie main extra" >> /etc/apt/sources.list

RUN wget -qO - https://emdebian.metrotek.center/emdebian-toolchain-archive.key | apt-key add -

RUN apt-get update -y
RUN apt-get install -y dpkg-cross crossbuild-essential-armhf

ENTRYPOINT ["/bin/bash"]
