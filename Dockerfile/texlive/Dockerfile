FROM texlive/texlive:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -y update && apt -y upgrade
RUN apt -y install imagemagick nodejs npm
RUN npm install -g reg-cli
RUN mkdir /home/app
