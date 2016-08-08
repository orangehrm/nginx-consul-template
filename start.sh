#!/usr/bin/env bash
NGINX_CONF=/etc/nginx/nginx.conf
# start nginx
nginx -c ${NGINX_CONF} -t && \
        nginx -c ${NGINX_CONF} -g "daemon on;"

consul-template -consul $CONSUL_URL -template="/templates/service.ctmpl:/etc/nginx/upstreams/service.conf:nginx -s reload"
