echo $DB_PASSWORD > db_password && \
  kubectl create secret generic metabase-secrets \
    --from-file=./db_password
rm db_password
