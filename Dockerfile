FROM ubuntu
RUN apt-get update && apt-get install -y curl gnupg wget libfontconfig python3

WORKDIR /home/root
COPY . /home/root

RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && tar -jxvf phantomjs-2.1.1-linux-x86_64.tar.bz2

ENTRYPOINT [ "./toPDF.sh" ]


