FROM python:3.5
WORKDIR /app
RUN pip install mongo-connector
RUN pip install elastic2-doc-manager
ADD ./scripts /app/scripts
ENTRYPOINT [ "/scripts/mongo-connector.sh" ]
