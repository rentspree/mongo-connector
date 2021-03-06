FROM python:3.5
WORKDIR /scripts
RUN pip install mongo-connector
RUN pip install elastic2-doc-manager==0.2.0
ADD ./scripts /scripts
RUN chmod +x /scripts/mongo-connector.sh
ENTRYPOINT [ "/scripts/mongo-connector.sh" ]
