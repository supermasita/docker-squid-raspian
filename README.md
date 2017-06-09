# Basic Squid on Raspian

:warning:  Needs to be build in a Raspberry

* Very basic Squid configuration
* Disk cache enabled
* NCSA authentication (not enabled by default)
  * User/Password file: /etc/squid/passwords
  * Default User/Password: user1/password1 


Example run:
```
$ sudo docker run --rm -p 3128:3128 -d --name "squid" -t docker-squid-raspian
fcd7982bc7adbc6a6bbec923498d1808a26b8e2039058e64e58e9cfd7826735d

$ sudo docker exec -i -t squid tail -f /var/log/squid3/access.log
1497017411.753    461 192.168.0.127 TCP_MISS/200 750 GET http://mirrorlist.centos.org/? - HIER_DIRECT/216.176.179.218 text/plain
1497017413.455    210 192.168.0.127 TCP_MISS/200 803 GET http://mirrorlist.centos.org/? - HIER_DIRECT/216.176.179.218 text/plain
1497017413.590    129 192.168.0.127 TCP_MISS/200 4029 GET http://mirrorlist.repoforge.org/el6/mirrors-rpmforge - HIER_DIRECT/151.101.0.133 application/octet-stream
```
