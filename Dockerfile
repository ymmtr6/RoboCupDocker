FROM ubuntu

LABEL MAINTAINER=ymmtr666@gmail.com

RUN set -x \
&& apt-get update \
&& apt-get install -y sudo curl wget ubuntu-desktop \
&& apt-get install -y build-essential autoconf automake libtool \
flex bison libboost-all-dev qt-sdk libfontconfig1-dev libaudio-dev libxt-dev \
libglib2.0-dev libxi-dev libxrender-dev 

WORKDIR /rc

RUN set -x \
&& wget https://github.com/rcsoccersim/rcssserver/releases/download/rcssserver-15.5.0/rcssserver-15.5.0.tar.gz \
&& tar xzvf rcssserver-15.5.0.tar.gz \
&& cd rssserver-15.5.0 \
&& ./configure \
&& make \
&& make install

WORKDIR /rc
RUN set -x \
&& wget https://github.com/rcsoccersim/rcssmonitor/releases/download/rcssmonitor-15.2.1/rcssmonitor-15.2.1.tar.gz \
&& tar xzvf rcssmonitor-15.2.1.tar.gz \
&& cd rcssmonitor-15.2.1 \
&& ./configure \
&& make \
&& make install 

WORKDIR /rc
RUN set -x \
&& wget https://github.com/rcsoccersim/rcsslogplayer/releases/download/rcsslogplayer-15.2.1/rcsslogplayer-15.2.1.tar.gz \
&& tar xzvf rcsslogplayer-15.2.1.tar.gz \
&& cd rcsslogplayer-15.2.1 \
&& ./configure \
&& make \
&& make install

WORKDIR /workspace

CMD rcsocckersim
