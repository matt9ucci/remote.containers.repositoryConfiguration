FROM mcr.microsoft.com/vscode/devcontainers/go:1

ARG DEBIAN_FRONTEND=noninteractive

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	bash-completion \
	gnupg \
 # Install Docker CLI: https://docs.docker.com/engine/install/ubuntu/
 && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
 # `$(lsb_release -cs)` is `bullseye`, not supported yet. Replace it with `focal`.
 # && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
 && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu focal stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	docker-ce-cli \
 && rm -rf /var/lib/apt/lists/*
