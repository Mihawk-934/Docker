FROM debian:latest

MAINTAINER Michael CLAUDE <miclaude@student.42.fr>

ENV TS3SERVER_LICENSE=accept

EXPOSE 9987/udp 10011/tcp 30033/tcp

RUN apt-get -qq update && \
    apt-get -qq upgrade && \
    apt-get -qq install wget bzip2 && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN groupadd -r teamspeak && \
    useradd -r -m -g teamspeak teamspeak

USER teamspeak

WORKDIR /home/teamspeak

RUN wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 && \
    tar xvf teamspeak3-server_linux_amd64-3.5.1.tar.bz2 && \
    rm teamspeak3-server_linux_amd64-3.5.1.tar.bz2

WORKDIR /home/teamspeak/teamspeak3-server_linux_amd64

CMD ["/home/teamspeak/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]
