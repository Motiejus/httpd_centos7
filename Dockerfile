FROM motiejus/systemd_centos7
RUN mkdir -p /var/www/html
ADD pyserver.service /etc/systemd/system/
RUN systemctl enable pyserver.service
EXPOSE 80
