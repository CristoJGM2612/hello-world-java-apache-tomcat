  FROM tomcat:9.0
  LABEL maintainer="cristojgm2612@gmail.com"

  ARG WAR_FILE=target/*.war

  ADD ${WAR_FILE} /usr/local/tomcat/webapps/

  EXPOSE 8082
  CMD ["catalina.sh", "run"]
