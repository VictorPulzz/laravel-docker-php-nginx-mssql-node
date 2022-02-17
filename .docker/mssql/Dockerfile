FROM mcr.microsoft.com/azure-sql-edge

USER root

# Install node/npm
RUN apt-get -y update  && \
        curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
        apt-get install -y nodejs

RUN npm install -g sql-cli

COPY ./mssql/scripts/ /tmp/scripts/

RUN chmod +x -R /tmp/scripts/

USER mssql

WORKDIR /tmp/scripts/

CMD ["/tmp/scripts/init.sh"]


