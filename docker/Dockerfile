FROM codermattie:2-3.11.8

LABEL docker-version = "1"
LABEL python-version = "3.11"
LABEL timestamp = "Tue"

WORKDIR /home

test -d $HOME/packages || mkdir -p $HOME/packages

COPY Dockerfile run-in-env.sh pypi-launcher.sh Pipfile .
RUN chmod u+x .pypi-launcer.sh run-in-env.sh

RUN $HOME/run-in-env.sh pipenv pypi-server

EXPOSE 8080
ENTRYPOINT[$HOME/pypi-server.sh]
