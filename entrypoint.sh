#!/bin/sh
HAPROXY_BIN=/usr/sbin/haproxy
HAPROXY_CFG=/etc/haproxy/haproxy.cfg
HAPROXY_FLAGS="-V"

if [ -f ${HAPROXY_CFG} ]; then
  echo "Starting HAProxy..."
  ${HAPROXY_BIN} ${HAPROXY_FLAGS} -f ${HAPROXY_CFG}
fi