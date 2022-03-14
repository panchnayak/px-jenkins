#!/bin/bash
declare -a PluginList=(
    "blueocean"
    "gitea" 
    "kubernetes" 
    "git"
    "github" 
    "docker-workflow"
    "pipeline-multibranch-defaults" 
    "blueocean" 
    "pipeline-aws"
)


for plugin in ${PluginList[@]}; do
   java -jar jenkins-cli.jar -auth admin:password -s http://localhost:8080/ install-plugin $plugin


done