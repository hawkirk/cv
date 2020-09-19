FROM ubuntu
RUN apt-get update && apt-get install -y curl gnupg wget libfontconfig python3
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y -qq yarn

WORKDIR /home/root
COPY . /home/root

RUN wget https://github.com/sass/dart-sass/releases/download/1.26.11/dart-sass-1.26.11-linux-x64.tar.gz && tar -xf dart-sass-1.26.11-linux-x64.tar.gz
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && tar -jxvf phantomjs-2.1.1-linux-x86_64.tar.bz2


RUN dart-sass/sass styles/app.scss app.css
#RUN phantomjs-2.1.1-linux-x86_64/bin/phantomjs toPDF.js 'http://localhost:4200' public/Lucas_Clemente.pdf A4
RUN ./toPDF.sh


