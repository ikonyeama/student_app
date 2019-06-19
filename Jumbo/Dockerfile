FROM python:3.7-alpine

MAINTAINER "ikonyeama@yahoo.co.uk"

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV PATH=/.virtualenvs/bin:$PATH
RUN apk add --no-cache gcc musl-dev linux-headers
# We copy just the requirements.txt first to leverage Docker cache
COPY requirements.txt requirements.txt

WORKDIR /

RUN pip install -r requirements.txt

COPY . .

# ENTRYPOINT [ "python" ]

# CMD ["app.py"]

CMD ["flask", "run"]

# RUN curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# RUN chmod +x /usr/local/bin/docker-compose
# RUN docker-compose --version

