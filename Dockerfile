FROM base-addon-distr 
MAINTAINER SharxDC
#COPY cronie* /
COPY entrypoint.sh /entrypoint.sh 
#COPY gosu /gosu
#COPY ssh* /etc/ssh/ 
RUN /bin/chmod +x /entrypoint.sh
#RUN mv /temp/var/.ssh /var/lib/one/ &&
#RUN yum install -y /cronie* && chmod +x /entrypoint.sh && mkdir -p /var/tmp/upl
#RUN yum install -y /cronie* && chmod +x /entrypoint.sh /gosu && mkdir -p /var/tmp/upl && rm -rf /cronie*
EXPOSE 2633

USER 9869

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["oned", "-f"]
