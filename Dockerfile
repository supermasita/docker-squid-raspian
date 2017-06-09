# Basic Squid on Raspian

FROM efrecon/armv7hf-debian

MAINTAINER "supermasita"

ENV UPDATED "2017-06-09"

# Install
RUN apt-get update
RUN apt-get install supervisor squid3

# Add configs
ADD squid.conf /etc/squid3/
ADD passwords /etc/squid3/
ADD supervisord.conf /etc/supervisor/conf.d/

# Create disk storage directory tree
RUN /usr/sbin/squid3 -Nz 

EXPOSE 3128

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
