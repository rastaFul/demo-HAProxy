FROM haproxy:2.0-alpine

EXPOSE 5000
CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-p", "/var/run/haproxy.pid"]
