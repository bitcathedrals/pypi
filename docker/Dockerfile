FROM codermattie/pythonsh:2-3.11.8

LABEL docker-version = "1"
LABEL python-version = "3.11"
LABEL timestamp = "Tue Mar 26 17:22:43 PDT 2024"

USER $USER
WORKDIR /home

COPY Dockerfile install-server.sh pypi.sh Pipfile .
RUN bash install-server.sh python

RUN test -d packages || mkdir -p packages

EXPOSE 8080
ENTRYPOINT ["/home/pypi.sh"]
