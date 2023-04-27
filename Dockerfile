FROM rabbitmq:3.10-management-alpine

COPY rabbitmq/rabbitmq.conf /etc/rabbitmq/
COPY rabbitmq/definitions.json /etc/rabbitmq/
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf /etc/rabbitmq/definitions.json

CMD ["rabbitmq-server"]
