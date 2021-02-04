#!/bin/sh -l
#
# Parameters
#
# $1 - sql-root-list
# $2 - command -lint/fix
# $3 - extra options

echo Running: sqlfluff $2 $3 $1
sqlfluff $2 $3 $1
exit_code=$?
if [ "$exit_code" = "0" ]; then
    echo "SQLfluff ok"
else
    echo "sqlfluff error"
    exit $exit_code
fi
