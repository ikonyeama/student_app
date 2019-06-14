FROM python:3.7-alpine

MAINTAINER "ikonyeama@yahoo.co.uk"

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
# We copy just the requirements.txt first to leverage Docker cache
COPY requirements.txt requirements.txt

WORKDIR /code only use this to create a working directory inside container

RUN pip install -r requirements.txt

# COPY . .

# ENTRYPOINT [ "python" ]

# CMD ["app.py"]

CMD ["flask", "run"]
