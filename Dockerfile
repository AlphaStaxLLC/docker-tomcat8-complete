#name of container: docker-tomcat8
#versison of container: 0.0.1
FROM quantumobject/docker-tomcat8
MAINTAINER Angel Rodriguez "angel@quantumobject.com"

RUN apt-get update && apt-get install -y -q --force-yes tomcat8-common \
                                                        tomcat8-docs \
                                                        tomcat8-admin \
                                                        tomcat8-examples \
                                                        tomcat8-user \
                                                  && apt-get clean \
                                                  && rm -rf /tmp/* /var/tmp/* \
                                                  && rm -rf /var/lib/apt/lists/*
                                                  
# to allow access from outside of the container to the container service
# at that ports need to allow access from firewall if need to access it outside of the server.
EXPOSE 8080

#Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
