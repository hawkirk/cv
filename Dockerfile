FROM ubuntu
RUN apt-get update && apt-get install -y curl gnupg wget
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y -qq yarn

WORKDIR /home/root
COPY . /home/root

RUN wget https://github.com/sass/dart-sass/releases/download/1.26.11/dart-sass-1.26.11-linux-x64.tar.gz && tar -xf dart-sass-1.26.11-linux-x64.tar.gz


RUN dart-sass/sass styles/app.scss app.css

