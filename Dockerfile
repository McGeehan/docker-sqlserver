FROM microsoft/mssql-server-linux:latest

# Install node/npm
RUN apt-get -y update  && \
        apt-get install -y curl

RUN mkdir -p /usr/sql
WORKDIR /usr/sql

# Bundle app source
COPY . /usr/sql

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/sql/import-data.sh

EXPOSE 8080

CMD /bin/bash ./entrypoint.sh