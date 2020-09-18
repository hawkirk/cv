FROM ubuntu
RUN apt-get update && apt-get install -y curl gnupg python2.7 make g++
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y -qq yarn
RUN yarn add --dev broccoli broccoli-cli
ENV PYTHON python2.7
COPY . /home/root
WORKDIR /home/root
