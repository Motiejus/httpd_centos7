FROM motiejus/systemd_centos7
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service
EXPOSE 80