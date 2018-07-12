FROM gcr.io/google-appengine/openjdk:8

# Set locale to UTF-8
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Install CloudProxy
ADD https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 ./cloud_sql_proxy
RUN chmod +x ./cloud_sql_proxy

#Download the latest version of Metabase
ADD http://downloads.metabase.com/v0.29.3/metabase.jar ./metabase.jar

CMD nohup ./cloud_sql_proxy -instances=$METABASE_SQL_INSTANCE=tcp:$MB_DB_PORT & java -jar ./metabase.jar
