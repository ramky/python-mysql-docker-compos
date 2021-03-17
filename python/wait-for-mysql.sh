#!/bin/bash

set -e
set -x

host="$1"
cmd="$@"

until mysql -h "$host" -u root -padmin123 sys -e 'select 1'; do
  >&2 echo "MySQL is unvailable - sleeping"
  sleep 2
done

>&2 echo "Mysql is up  - executing command"
$2 $3 $4

>&2 echo "Keeping the Python container running
exec $5 $6