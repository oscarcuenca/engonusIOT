FROM openremote/deployment-base:latest

COPY image/ /deployment/
COPY keycloak/themes/ /opt/keycloak/themes/

RUN chmod -R 755 /opt/keycloak/themes/
