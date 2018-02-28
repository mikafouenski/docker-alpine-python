FROM mikafouenski/alpine-s6
MAINTAINER mikafouenski

ENV LANG C.UTF-8

RUN apk add --no-cache \
        python3 \
        python3-dev \
        build-base && \
    python3 -m ensurepip && \
    rm -rf /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    [[ -e /usr/bin/pip ]] || ln -s pip3 /usr/bin/pip && \ 
    [[ -e /usr/bin/python ]] || ln -s python3 /usr/bin/python && \ 
    rm -rf /tmp/* /root/.cache
