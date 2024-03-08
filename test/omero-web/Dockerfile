FROM gitlab-registry.in2p3.fr/fbi-data/dockers-projects/omero-web/omero-web:latest
USER root
RUN apt-get update
RUN apt-get install -y git
COPY config.omero /opt/omero/web/config/config.omero
#USER omero-web
RUN /opt/omero/web/venv3/bin/pip install "git+https://github.com/juliomateoslangerak/dash-omero-project.git"
USER omero-web