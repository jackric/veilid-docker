FROM debian:12

RUN apt-get update && apt-get install -y \
    gpg \
    sudo \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN bash -c "wget -O- https://packages.veilid.net/gpg/veilid-packages-key.public | sudo gpg --dearmor -o /usr/share/keyrings/veilid-packages-keyring.gpg"
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/veilid-packages-keyring.gpg] https://packages.veilid.net/apt stable main" > /etc/apt/sources.list.d/veilid.list
RUN apt-get update && apt-get install -y \
    veilid-cli \
    veilid-server \
    && rm -rf /var/lib/apt/lists/*


