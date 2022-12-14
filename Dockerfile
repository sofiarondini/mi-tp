ROM ubuntu:latest
MAINTAINER Rondini Sofia<sofiarondini002@gmail.com>

ADD 1statsWords.sh .
ADD 2statsUsageWords.sh .
ADD 3findNames.sh .
ADD 4statsSentences.sh .
ADD 5blankLinesCounter.sh .
ADD menu.sh .
ADD texto.txt .



ENTRYPOINT ./menu.sh
