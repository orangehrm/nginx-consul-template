FROM nginx:alpine
MAINTAINER Ridwan Shariffdeen <ridwan.11@cse.mrt.ac.lk>
COPY consul-template /usr/local/bin/consul-template

ENV CONSUL_URL consul:8500

COPY start.sh /opt/start.sh
RUN chmod +x /opt/start.sh

RUN apk add --no-cache \
# bash for running scripts
bash


EXPOSE 80
ENTRYPOINT ["/opt/start.sh"]