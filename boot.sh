#!/usr/bin/env bash

CONTEXT=${KUBECTL_CONTEXT:-"k3d-cluster1"}

kubectl create namespace demo --context "$CONTEXT"
kubectl apply -f ./demo-app.yaml --namespace demo --context "$CONTEXT"
kubectl apply -f ./interceptor-route.yaml --namespace demo --context "$CONTEXT"
kubectl apply -f ./scaled-object.yaml --namespace demo --context "$CONTEXT"
kubectl apply -f ./ingress.yaml --namespace demo --context "$CONTEXT"