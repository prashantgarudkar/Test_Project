#Base Image
FROM centos:latest
RUN yum update -y
RUN yum install httpd
ADD index.html /var/www/html/
RUN systemctl enable httpd
RUN systemctl start httpd
