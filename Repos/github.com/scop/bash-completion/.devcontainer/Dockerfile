FROM ghcr.io/matt9ucci/vscode/ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	cmake \
	make \
	python-is-python3 \
	python3 \
	xz-utils \
 && rm -rf /var/lib/apt/lists/*
