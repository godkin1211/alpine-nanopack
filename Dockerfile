FROM alpine:edge

MAINTAINER Chiachun Chiu <chiachun.chiu@gmail.com>

RUN apk update && \
	apk add --no-cache --upgrade linux-headers musl-dev gcc g++ autoconf make \
	                             python3 python3-dev zlib-dev bzip2-dev xz-dev \
								 curl-dev libpng-dev freetype-dev lapack lapack-dev \
								 openblas git gfortran file

RUN		git clone https://github.com/samtools/htslib.git && \
		cd htslib && autoheader && autoconf && ./configure && \
		make && make install && cd ../ && \
		pip3.6 install --upgrade pip && \
		pip3.6 install numpy && \
		pip3.6 install matplotlib && \
		pip3.6 install scipy && \
		pip3.6 install nanopack
