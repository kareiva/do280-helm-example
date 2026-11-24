#!/bin/bash

podman build -t registry.lab.example.com:8443/simonas/etherpad:latest .

podman login registry.lab.example.com:8443

podman push registry.lab.example.com:8443/simonas/etherpad:latest

helm repo add redhat-cop https://redhat-cop.github.io/helm-charts

helm install simonnotepad -f values.yaml redhat-cop/etherpad
