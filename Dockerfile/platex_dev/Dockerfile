FROM texlive/texlive:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -y update && apt -y upgrade
RUN apt -y install imagemagick nodejs npm
RUN npm install -g reg-cli
RUN mkdir /home/app
RUN mkdir /home/platex_dev
RUN apt -y install git
WORKDIR /home/platex_dev
RUN git clone https://github.com/texjporg/platex.git
WORKDIR platex
RUN make && make install && fmtutil-sys --byfmt platex-dev
