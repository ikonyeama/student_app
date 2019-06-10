FROM ubuntu:16.04

MAINTANER Your Name "ikonyeama@yahoo.co.uk"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /test_webapp/requirements.txt

WORKDIR /test_webapp

RUN pip install -r requirements.txt

COPY . /test_webapp

ENTRYPOINT [ "python" ]

CMD [ "__init__.py" ]
