FROM motiejus/systemd_centos7
RUN mkdir -p /var/www/html
ADD pyserver.service /etc/systemd/system/
ADD index.html /var/www/html/index.html
RUN systemctl enable pyserver.service
EXPOSE 80
