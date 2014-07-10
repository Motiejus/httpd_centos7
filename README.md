Systemd-based Apache2 container in CentOS7
==========================================

Invoke like this:

    $ docker run --privileged -ti \
            -v ${PWD}:/var/www/html \
            -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
            -p 80:80 httpd_centos7

Test it:

    $ curl http://localhost/
    Welcome, world!

Change contents of "index.html" (inside or outside the container, without stopping it):

    $ curl http://localhost/
    Happy birthday!
