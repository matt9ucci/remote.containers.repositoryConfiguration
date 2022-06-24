FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	apt-transport-https \
	ca-certificates \
	dirmngr \
	gnupg \
 && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
 # Official does not work: https://www.mono-project.com/download/stable/#download-lin-debian
 # Workaround: https://github.com/mono/mono/issues/21246#issuecomment-944161802
 && echo 'deb http://origin-download.mono-project.com/repo/debian stable-buster main' | tee /etc/apt/sources.list.d/mono-official-stable.list \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	mono-devel \
	msbuild \
 && rm -rf /var/lib/apt/lists/*
