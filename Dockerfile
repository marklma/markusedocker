FROM  daocloud.io/daocloud/dao-tomcat:v7.0.55

# clean ROOT
RUN rm -R -f /tomcat/webapps/ROOT

# copy project to tomcat root
ADD WebRoot /tomcat/webapps/ROOT

EXPOSE 8080
CMD ["/run.sh"]
