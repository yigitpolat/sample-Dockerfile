FROM registry.access.redhat.com/ubi8/ubi:8.2
MAINTAINER Yigit Polat <yigit.polat@ibm.com>
LABEL description="This is a custom nginx container image"
ENV LogLevel "info"
RUN yum install -y nginx && yum clean all
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
