#!/bin/bash -x


java -jar jenkins-cli.jar -auth $1:$2 -s http://localhost:8080  create-job eks-px-pipeline < /tmp/scripts/eks-px-pipeline.xml
java -jar jenkins-cli.jar -auth $1:$2 -s http://localhost:8080  create-job gke-px-pipeline < /tmp/scripts/gke-px-pipeline.xml

sudo systemctl restart jenkins