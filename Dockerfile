FROM ubuntu
COPY _build/integration_test/rel/lighthouse_service/releases/0.0.1/lighthouse_service.tar.gz /tmp/
RUN apt-get update
RUN apt-get install -y libncurses5 openssl
RUN cd /usr/local/lib/ \
       && mkdir lighthouse-service \
       && cd lighthouse-service \
       && tar xfz /tmp/lighthouse_service.tar.gz
CMD [ "/usr/local/lib/lighthouse-service/bin/lighthouse_service", "foreground" ]

