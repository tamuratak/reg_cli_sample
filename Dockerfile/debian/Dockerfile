FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
		biber \
		latexmk \
		make \
		texlive-full \
	&& rm -rf /var/lib/apt/lists/*
RUN apt -y install imagemagick nodejs npm
RUN npm install -g reg-cli
RUN mkdir /home/app
