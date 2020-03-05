FROM debian:10

RUN apt-get update \
    && apt-get install -y \
        gcc \
        g++ \
        gcc-avr \
        avr-libc \
        cpputest \
        make \
        pkg-config \
        avrdude \
    && rm -rf /var/lib/apt/lists/*  

ADD blf-a6.c .
ADD build-hex.sh .

RUN ./build-hex.sh 13 blf-a6
