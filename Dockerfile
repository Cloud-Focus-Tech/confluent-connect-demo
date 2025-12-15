FROM confluentinc/cp-server-connect:latest
USER root
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest
#RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage-source:latest

USER 1001