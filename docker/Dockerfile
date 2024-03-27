FROM codermattie/pythonsh:2-3.11.8

LABEL docker-version = "1"
LABEL python-version = "3.11"
LABEL timestamp = "Tue Mar 26 17:13:59 PDT 2024"

USER $USER
WORKDIR /home

COPY Dockerfile run-in-venv.sh pypi.sh Pipfile .
RUN test -d packages || mkdir -p packages
RUN bash run-in-venv.sh python pyenv exec python -m pip install

EXPOSE 8080
ENTRYPOINT ["/home/pypi.sh"]
