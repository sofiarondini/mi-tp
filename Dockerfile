FROM debian
MAINTAINER sofiarondini002@gmail.com

WORKDIR /usandodocker

ADD 1statsWords.sh 2statsUsageWords.sh 3findNames.sh 4statsSentence.sh 5blankLinesCounter.sh menu.sh /usandodocker

ENTRYPOINT /usandodocker/menu.sh
