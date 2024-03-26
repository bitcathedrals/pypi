FROM codermattie/pythonsh:2-3.11.8

LABEL docker-version = "1"
LABEL python-version = "3.11"
LABEL timestamp = "Tue Mar 26 16:42:53 PDT 2024"

USER $USER
WORKDIR /home

RUN test -d packages || mkdir -p packages

COPY Dockerfile run-in-venv.sh pypi.sh Pipfile .
RUN chmod u+x pypi.sh run-in-venv.sh

RUN ./run-in-venv.sh python pipenv install

EXPOSE 8080
ENTRYPOINT ["/home/pypi.sh"]
