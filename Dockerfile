FROM ubuntu
COPY _build/integration_test/rel/lighthouse/releases/0.0.1/lighthouse.tar.gz /tmp/
RUN apt-get update
RUN apt-get install -y libncurses5 openssl
RUN cd /usr/local/lib/ \
       && mkdir lighthouse \
       && cd lighthouse \
       && tar xfz /tmp/lighthouse.tar.gz
CMD [ "/usr/local/lib/lighthouse/bin/lighthouse", "foreground" ]

