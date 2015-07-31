# docker-tomcat8-complete

Docker container for [Tomcat8][3] with documentation,example, etc:

"Apache Tomcat version 8.0 implements the Servlet 3.1 and JavaServer Pages 2.3 [specifications][6] from the [Java Community Process][7], and includes many additional features that make it a useful platform for developing and deploying web applications and web services."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d -p 8080 quantumobject/docker-tomcat8-complete

with default configuration:

  - ADMIN_USER: admin
  - ADMIN_PASS: tomcat
  
or you can provide your own value when running the first time:

    $ docker run -d -p 8080 -e ADMIN_USER=admin -e ADMIN_PASS=password quantumobject/docker-tomcat8-complete

or you can change value at file /etc/tomcat8/tomcat-users.xml by

    $ docker exec -it container_id /bin/bash
    $ export TERM=xterm
    $ nano /etc/tomcat8/tomcat-users.xml
    $ exit
  
## Accessing the Tomcat8 applications:

After that check with your browser at addresses plus the port assigined by docker for port 8080:

  - **http://host_ip:port/**


## If you need a database like MySQL or progreSQL you can link container :

    $ docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

or

    $ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql

Them link to Tomcat8 container

    $ docker run -d -p 8080 --link [some-postgres|some-mysql]:db quantumobject/docker-tomcat8-complete

where when been ask for database need to replace localhost for db.

##Open Source application that you can deploy with this container

- OpenMRS [openmrs.org][10] ==>  example of deployment [OpenMRS][8]

"leading open source enterprise electronic medical record system platform"

- GeoNetwork [geonetwork-opensource.org][11] ==> example of deployment [GeoNetwork][12]

"GeoNetwork is a catalog application to manage spatially referenced resources. It provides powerful metadata editing and search functions as well as an interactive web map viewer. It is currently used in numerous Spatial Data Infrastructure initiatives across the world." 

 - GeoServer [geoserver.org][13]  ==> example of deployment [GeoServer][14]
 
"GeoServer is an open source server for sharing geospatial data."

 - OpenSearchServer [www.opensearchserver.com][15]  ==> example of deployment [OpenSearchServer][16]
 
"Open-source enterprise class search engine software"

## More Info

About Tomcat8 [tomcat.apache.org][1]

To help improve this container [quantumobject/docker-tomcat8][5]

Exaple of [Tomcat8][9]

[1]:https://tomcat.apache.org/index.html
[2]:https://www.docker.com
[3]:https://tomcat.apache.org/tomcat-8.0-doc/index.html
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-tomcat8
[6]:http://wiki.apache.org/tomcat/Specifications
[7]:https://www.jcp.org/en/home/index
[8]:http://www.quantumobject.com:49164/openmrs/
[9]:http://www.quantumobject.com:49164/
[10]:http://openmrs.org/
[11]:http://geonetwork-opensource.org/
[12]:http://www.quantumobject.com:49164/geonetwork/
[13]:http://geoserver.org/
[14]:http://www.quantumobject.com:49164/geoserver/
[15]:http://www.opensearchserver.com/
[16]:http://www.quantumobject.com:49164/opensearchserver/
