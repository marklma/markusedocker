FROM  tomcat:7.0.63

ENV CATALINA_HOME /usr/local/tomcat

# clean ROOT
RUN rm -R -f /$CATALINA_HOME/webapps/ROOT

# copy project to tomcat root
ADD WebRoot /$CATALINA_HOME/webapps/ROOT

EXPOSE 8080
CMD ["catalina.sh","run"]
