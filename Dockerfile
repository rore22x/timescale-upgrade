FROM tianon/postgres-upgrade:10-to-12

RUN apt-get update
RUN apt-get install -y wget
RUN echo "deb https://packagecloud.io/timescale/timescaledb/debian/ stretch main" > /etc/apt/sources.list.d/timescaledb.list
RUN wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | apt-key add -
RUN apt-get update
RUN apt-get install -y timescaledb-1.7.0-postgresql-10
RUN apt-get install -y timescaledb-1.7.0-postgresql-12