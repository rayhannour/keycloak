FROM jboss/keycloak:latest
USER root
COPY /driver/ojdbc8.jar /opt/jboss/keycloak/modules/system/layers/base/com/oracle/jdbc/main/
COPY /driver/module.xml /opt/jboss/keycloak/modules/system/layers/base/com/oracle/jdbc/main/
COPY /driver/orai18n.jar /opt/jboss/keycloak/modules/system/layers/base/com/oracle/jdbc/main/

USER jboss