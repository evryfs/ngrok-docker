FROM quay.io/evryfs/base-ubuntu:focal-20210416
ARG NGROK_ARCHIVE=https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN curl -L ${NGROK_ARCHIVE} -o /tmp/ngrok.zip && \
  unzip /tmp/ngrok.zip -d /usr/local/bin && \
  chmod a+rx /usr/local/bin/ngrok && \
  rm /tmp/ngrok.zip
ENTRYPOINT ["/usr/local/bin/ngrok"]
