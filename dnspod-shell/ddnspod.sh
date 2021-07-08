#!/bin/sh
#

# Import ardnspod functions
echo `date` > /data/ddns/ddns.log
. /data/ddns/ardnspod

# Combine your token ID and token together as follows
arToken="$TOKEN_ID,$TOKEN"

# Place each domain you want to check as follows
# you can have multiple arDdnsCheck blocks

# IPv4:
arDdnsCheck "$DOMAIN" "$SUBDOMAIN"

# IPv6:
#arDdnsCheck "test.org" "subdomain6" 6
