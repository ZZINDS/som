#!/bin/bash

CHECK_CURL="http://myip.ipip.net"
CHECK_USER_PASSWD="xxjaoeid:keij*j3jdh"

if [ $# == 1 ];then
 /usr/bin/curl -U $CHECK_USER_PASSWD --socks5 $1:32080  $CHECK_CURL
elif [ $# == 2 ];then
 /usr/bin/curl -U $CHECK_USER_PASSWD --socks5 $1:32080  $2
elif [ $# == 0 ];then
 echo " $0 is Missing IP parameters"
fi
