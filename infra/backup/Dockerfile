FROM rclone/rclone:latest
RUN apk add --no-cache bash docker rsync tzdata

COPY root/ /

RUN /usr/bin/crontab /crontab.txt
RUN cp /usr/share/zoneinfo/Europe/Tallinn /etc/localtime

ENTRYPOINT [ "crond", "-l", "2", "-f" ]
