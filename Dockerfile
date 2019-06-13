FROM python:3.7-alpine

MAINTAINER "ikonyeama@yahoo.co.uk"

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
# We copy just the requirements.txt first to leverage Docker cache
COPY requirements.txt /totona3/requirements.txt

WORKDIR /totona3

RUN pip install -r requirements.txt

COPY . .

# ENTRYPOINT [ "python" ]

# CMD ["app.py"]

CMD ["flask", "run"]
