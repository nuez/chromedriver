FROM ubuntu

RUN apt-get update

RUN apt-get install -y \
	git \
	curl \
	ssh-client \
    wget \
    chromium-browser

COPY chromedriver /usr/local/bin

EXPOSE 4444

RUN chromedriver --port=4444 --whitelisted-ips=""