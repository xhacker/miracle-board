FROM ubuntu:trusty

RUN apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get -yq install python-pip;
RUN mkdir /app;

ADD hello.py /app/hello.py
ADD static /app/static
ADD templates /app/templates
ADD config.json /app/config.json
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

EXPOSE 5000
WORKDIR /app
CMD ["python", "hello.py"]
