#!/bin/bash

sleep 25s
mssql -s localhost -u ${MSSQL_USER} -p ${MSSQL_SA_PASSWORD} -d master -q "CREATE DATABASE ${MSSQL_DB}"
