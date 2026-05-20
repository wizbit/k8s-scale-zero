#!/usr/bin/env bash

CONTEXT=${KUBECTL_CONTEXT:-"k3d-cluster1"}

kubectl delete -f ./demo-app.yaml --namespace demo --context "$CONTEXT"
kubectl delete -f ./interceptor-route.yaml --namespace demo --context "$CONTEXT"
kubectl delete -f ./scaled-object.yaml --namespace demo --context "$CONTEXT"
kubectl delete -f ./ingress.yaml --namespace demo --context "$CONTEXT"
kubectl delete namespace demo --context "$CONTEXT"
