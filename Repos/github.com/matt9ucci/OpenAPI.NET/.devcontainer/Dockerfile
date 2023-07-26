FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	apt-transport-https \
	ca-certificates \
	dirmngr \
	gnupg \
 # To install mono-devel: https://www.mono-project.com/download/stable/#download-lin-debian
 && gpg --homedir /tmp --no-default-keyring --keyring /usr/share/keyrings/mono-official-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
 && echo "deb [signed-by=/usr/share/keyrings/mono-official-archive-keyring.gpg] https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	mono-devel \
	msbuild \
 && rm -rf /var/lib/apt/lists/*
