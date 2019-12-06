FROM debian:stretch
WORKDIR /src
COPY . .
RUN apt-get update -y
RUN apt-get install libreadline-dev libconfig-dev lua5.2 liblua5.2-dev libevent-dev libjansson-dev libpython-dev make zlib1g-dev libssl1.0-dev libgcrypt20 libgcrypt20-dev -y
RUN ./configure
RUN make
CMD ./bin/telegram-cli
