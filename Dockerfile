FROM jenkins/jenkins:lts

USER root

# Instalación opcional de herramientas adicionales
RUN apt-get update && apt-get install -y docker.io

# Copiar configuración de JCasC
COPY jenkins.yaml /var/jenkins_home/casc_configs/jenkins.yaml

# Activar JCasC
ENV CASC_JENKINS_CONFIG=/var/jenkins_home/casc_configs/jenkins.yaml

USER jenkins
