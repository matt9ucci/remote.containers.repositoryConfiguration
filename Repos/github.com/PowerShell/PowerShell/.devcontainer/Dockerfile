FROM mcr.microsoft.com/dotnet/sdk:7.0-focal

ARG DEBIAN_FRONTEND=noninteractive

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	bash-completion \
	git \
	sudo \
 && rm -rf /var/lib/apt/lists/*
