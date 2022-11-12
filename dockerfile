FROM python:3.10


ARG DB_CONTROLPLANE_HOST
ARG DB_CONTROLPLANE_PORT
ARG DB_CONTROLPLANE_DATABASE
ARG DB_CONTROLPLANE_USERNAME
ARG DB_CONTROLPLANE_PASSWORD

ARG REST_DB_MONGO_USER
ARG REST_DB_MONGO_PASSWORD
ARG REST_DB_MONGO_HOST
ARG REST_DB_MONGO_REPLICA_SET
ARG REST_DB_MONGO_AUTH_DB
ARG REST_DB_MONGO_MAIN_DB


RUN apt-get update -y

COPY . .

RUN pip install -r requirements.txt

WORKDIR /src
ENTRYPOINT ["python"]

CMD ["app.py"]