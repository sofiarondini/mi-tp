FROM debian
MAINTAINER sofiarondini002@gmail.com

WORKDIR /usandodocker

ADD 1statsWords.sh 2ststsUsageWords.sh 3findNames.sh 4statsSentence.sh 5blanckLinesCounter.sh menu.sh /usandodocker

ENTRYPOINT /usandodocker/menu.sh
