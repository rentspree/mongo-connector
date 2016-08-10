FROM python:latest
WORKDIR /app
ADD ./scripts /app/scripts
ENTRYPOINT [ "/scripts/mongo-connector.sh" ]