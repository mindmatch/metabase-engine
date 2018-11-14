# metabase-engine

Config files to deploy Metabase to Google Kubernetes Engine

## Deployment

Assumes that deployment is done to a cluster with [certmanager](http://docs.cert-manager.io) installed
and a issuer `letsencrypt-prod` created

createing secrets:

```
DB_PASSWORD=Secr3tPa5sw0rd && ./k8s/secrets.bash
```

```shell
./k8s.bash
```
