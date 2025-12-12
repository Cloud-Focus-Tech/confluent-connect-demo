FROM confluentinc/cp-server-connect:latest
USER root
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest
#RUN confluent connect plugin install confluentinc/kafka-connect-jdbc:10.9.0

USER 1001