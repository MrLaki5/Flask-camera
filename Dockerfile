FROM python:3.10.9-bullseye

RUN apt-get -y update && apt-get -y install libgl1

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r ./requirements.txt

COPY templates /app/templates
COPY server.py /app/server.py

ENTRYPOINT ["./server.py"]
