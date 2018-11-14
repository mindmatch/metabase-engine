# metabase-engine

Config files to deploy Metabase to Google Kubernetes Engine

## Deployment

Assumes that deployment is done to a cluster with [certmanager](http://docs.cert-manager.io) installed
and a issuer `letsencrypt-prod` created

createing secrets:

```
source .env && ./k8s/secrets.bash
```

deploying changes

```shell
./k8s.bash
```
