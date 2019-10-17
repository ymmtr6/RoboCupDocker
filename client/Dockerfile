FROM ubuntu

LABEL MAINTAINER=ymmtr666@gmail.com

ENV HOME=/rc

RUN set -x \
&& apt update \
&& apt install -y wget curl sudo ubuntu-desktop \
&& apt install -y gcc gcc-c++ automake make libtool cppunit cppunit-devel

WORKDIR /rc
RUN set -x \
&& wget https://ja.osdn.net/projects/rctools/downloads/51941/librcsc-4.1.0.tar.gz \
&& tar xzvf librcsc-4.1.0.tar.gz \
&& cd librcsc-4.1.0 \
&& ./configure \
&& make \
&& make install
