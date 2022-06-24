FROM ghcr.io/matt9ucci/vscode/devcontainers/al2022:latest

RUN set -x \
 # RPM package repository of yarn. See https://classic.yarnpkg.com/lang/en/docs/install/#centos-stable
 && curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo \
 && sudo yum update \
 && sudo yum -y install \
	nodejs \
	npm \
	yarn \
 && sudo yum clean all \
 # nvm
 && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
