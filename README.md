# metabase-engine

Config files to deploy Metabase to Google App Engine

## Deployment

1) `cp .env.example .env` and make sure proper secrets are set
2) generate app file `source .env && eval "cat <<< \"$(<app.yml.example)\"" 2> /dev/null > app.yml`
3) `gcloud app deploy app.yml`
