FROM debian:latest

MAINTAINER Michael CLAUDE <miclaude@student.42.fr>

RUN apt-get -y update \
	&& apt-get -y upgrade \
	&& apt-get -y install gcc make build-essential \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp*

COPY . /project

WORKDIR /project

CMD ["bash"]
