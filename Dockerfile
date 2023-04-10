FROM alpine

RUN apk update && apk upgrade

RUN apk add --no-cache git python3 py3-pip

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

CMD ["sh", "-c", "python phonenumber_osint.py; exec /bin/sh -i"]
