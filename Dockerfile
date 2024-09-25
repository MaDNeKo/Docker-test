FROM ubuntu:24.04

ENV TZ="Europe/Moscow"

RUN apt -y update && apt -y install git tzdata
RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime

CMD echo "Hello, IAC"; date
