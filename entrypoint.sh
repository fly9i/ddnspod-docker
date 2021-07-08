#!/bin/sh
crond &
tail -F /data/ddns/ddns.log
