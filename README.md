# Scale Zero Demo

Installs a demo app using [Keda Http Add on](https://keda.sh/http-add-on/0.14/) to scale to zero

## Requirements

A kubernetes cluster with Keda and Keda Http Add on installed

## To run

```shell
KUBECTL_CONTEXT=<context> ./boot.sh
```

## What is installed

A deployment of "traefik/whoami", with a service, Traefik IngressRoute (scale.docker.localhost), an InterceptorRoute & a ScaledObject