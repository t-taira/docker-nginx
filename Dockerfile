FROM centos:centos6
MAINTAINER t-taira
ENV PATH $PATH:/usr/bin
RUN yum -y update
RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install nginx monit
RUN echo "example docker nginx server" > /usr/share/nginx/html/index.html
ADD nginx.conf /etc/monit.d/nginx.conf

EXPOSE 80
