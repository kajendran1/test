FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/works-with-heroku-1.0.war /usr/local/tomcat/webapps/
