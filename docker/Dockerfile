FROM codermattie/pythonsh:2-3.11.8

LABEL docker-version = "1"
LABEL python-version = "3.11"
LABEL timestamp = "Wed Mar 27 08:01:37 PDT 2024"

USER $USER
WORKDIR /home

COPY Dockerfile install-server.sh pypi.sh Pipfile .
RUN bash install-server.sh python

RUN test -d packages || mkdir -p packages

EXPOSE 8080
ENTRYPOINT ["/home/pypi.sh"]
