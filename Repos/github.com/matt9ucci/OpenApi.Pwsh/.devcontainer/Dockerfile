FROM mcr.microsoft.com/dotnet/sdk:6.0

ARG DEBIAN_FRONTEND=noninteractive

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	bash-completion \
	sudo

# Settings for vscode: authorized sudo user
ARG USER_NAME=vscode
RUN set -ux \
 && adduser --disabled-login --gecos '' $USER_NAME \
 && adduser $USER_NAME sudo \
 && echo "$USER_NAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER_NAME \
 && sudo --user $USER_NAME sudo echo 'Test sudo for .sudo_as_admin_successful file'

USER $USER_NAME
