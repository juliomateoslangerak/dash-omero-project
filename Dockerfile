FROM ghcr.io/manics/omero-web-docker:ubuntu
USER root
#RUN apt-get update
#RUN apt-get install -y git
COPY config_files/config.omero /opt/omero/web/config/config.omero
RUN mkdir package
COPY omero_metrics package/omero_metrics
COPY setup.py package/setup.py
RUN /opt/omero/web/venv3/bin/pip install -U ./package
USER omero-web