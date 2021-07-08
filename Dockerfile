FROM alpine
RUN \
  mkdir -p /data/ddns && \
  touch /data/ddns/ddns.log
COPY dnspod-shell/ddnspod.sh /data/ddns/
COPY dnspod-shell/ardnspod /data/ddns/
COPY cron  /var/spool/cron/crontabs/root
COPY entrypoint.sh /data/entrypoint.sh
CMD ["sh","/data/entrypoint.sh"]
