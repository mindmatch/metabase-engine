#!/bin/bash
echo -n ${MB_DB_PASS:?} > db_password && \
  echo -n ${MB_DB_USER:?} > db_user && \
  kubectl delete secret metabase-secrets && \
  kubectl create secret generic metabase-secrets \
    --from-file=./db_password \
    --from-file=./db_user
rm db_password
rm db_user
