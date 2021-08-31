FROM quay.io/evryfs/base-ubuntu:focal-20210723
ARG NGROK_ARCHIVE=https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN apt-get update && apt-get -y install --no-install-recommends jq=1.* && apt-get clean && rm -rf /var/lib/apt/lists/* && \
  curl -L ${NGROK_ARCHIVE} -o /tmp/ngrok.zip && \
  unzip /tmp/ngrok.zip -d /usr/local/bin && \
  chmod a+rx /usr/local/bin/ngrok && \
  rm /tmp/ngrok.zip
COPY probe.sh /
ENTRYPOINT ["/usr/local/bin/ngrok"]
