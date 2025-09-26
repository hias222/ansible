#!/bin/bash

# Usage: ./list_mariadb_databases.sh [user] [password] [host]
USER="${1:-root}"
PASSWORD="${2:-your_root_password}"
HOST="${3:-localhost}"

mysql -u"$USER" -p"$PASSWORD" -h"$HOST" -e "SHOW DATABASES;" -s -N | jq -R . | jq -s '{databases: .}'