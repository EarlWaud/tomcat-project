FROM docker.artifactory-preprod.a.intuit.com/oicp/tomcat:latest
#FROM tomcat:latest
MAINTAINER earl_waud@intuit.com

#/usr/local/apache-tomcat-8.0.36H-2.0.1/webapps/ROOT.war

#RUN [“/bin/rm”, “-fr”, “/usr/local/tomcat/webapps/ROOT”]
#COPY ./DockerExample.war /usr/local/tomcat/webapps/ROOT.war
#COPY ./ibp-demo/*.war /usr/local/tomcat/webapps/
#COPY ./ibp-demo/ipb-demo.war /usr/local/tomcat/webapps/
COPY ./ibp-demo/sample.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8089

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

