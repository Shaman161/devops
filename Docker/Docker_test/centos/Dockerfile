FROM centos:7
RUN yum -y update &&  yum install -y nginx
COPY WebPage.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]