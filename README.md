# Jenkins Docker personalizado

Este proyecto crea una imagen personalizada de Jenkins con usuario y contraseña predefinidos y almacenamiento persistente.

## Usuario por defecto
- **Usuario:** admin
- **Contraseña:** admin123

## Ejecutar

```bash
docker build -t jenkins-custom .
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins \
  -v jenkins_data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins-custom
