FROM	electronuserland/builder

RUN	dpkg --add-architecture i386
RUN	wget https://dl.winehq.org/wine-builds/Release.key
RUN	apt-key add Release.key
RUN	apt-get update
RUN	apt-get install python-software-properties software-properties-common libicns-dev libicns1 -y
RUN	apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
RUN     apt-get update
RUN	apt-get install --install-recommends winehq-staging wine-gecko -y
