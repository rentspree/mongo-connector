FROM python:3.5
WORKDIR /scripts
RUN pip install mongo-connector
RUN pip install elastic2-doc-manager
ADD ./scripts /scripts
ENTRYPOINT [ "/scripts/mongo-connector.sh" ]
