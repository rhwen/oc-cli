FROM alpine:latest

USER root

RUN apk add ca-certificates

ADD https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-4.3.18.tar.gz /tmp/openshift-client-linux-4.3.18.tar.gz

RUN tar xvf /tmp/openshift-client-linux-4.3.18.tar.gz -C /bin && \
    rm -rf /tmp/openshift-client-linux-4.3.18.tar.gz && \
    mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

CMD ["/bin/sh"]
