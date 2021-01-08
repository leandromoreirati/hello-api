FROM python:3.8 
ENV HOME=/opt/hello-api

WORKDIR $HOME

COPY  . $HOME

RUN pip install --user -r requirements.txt

ENV PATH=$HOME/.local/bin:$PATH

RUN useradd -c "Service User" -s /bin/bash api && \
    chown -R api.api /opt/*

USER api

EXPOSE 5000

CMD ["uwsgi", "--ini", "api.ini"]