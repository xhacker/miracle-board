FROM alpine:3.3
MAINTAINER miracle-board@ela.build

RUN apk --update --no-cache add python py-pip && pip install --upgrade pip
RUN apk --update add --virtual build-dependencies python-dev build-base openssl-dev libffi-dev

COPY . /app
WORKDIR /app

RUN pip install -r /app/requirements.txt
RUN pip install gunicorn

RUN apk del build-dependencies

EXPOSE 8000
CMD ["gunicorn", "-b 0.0.0.0", "-w 2", "hello:app"]
