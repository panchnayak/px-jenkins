#!/bin/bash -x
#login

sudo cp /tmp/scripts/jenkins-create-admin.groovy /var/lib/jenkins/init.groovy.d
#sudo sed -i '3,5 s/1.0/2.0/g' /var/lib/jenkins/config.xml
sudo sed -i -e 's/<jdks\/>/<jdks> <jdk> <name>java-11-openjdk<\/name> <home>\/usr\/lib\/jvm\/openjdk11<\/home>  <properties\/> <\/jdk> <\/jdks>/g' /var/lib/jenkins/config.xml
sudo systemctl restart jenkins

curl -LO http://localhost:8080/jnlpJars/jenkins-cli.jar
JAVA_HOME=$1}
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
java -jar jenkins-cli.jar -auth $2:$3 -s http://localhost:8080 install-plugin git github docker-workflow pipeline-multibranch-defaults blueocean pipeline-aws

sudo systemctl restart jenkins
java -jar jenkins-cli.jar -auth $2:$3 -s http://localhost:8080  create-job eks-px-pipeline < /tmp/scripts/eks-px-pipeline.xml
java -jar jenkins-cli.jar -auth $2:$3 -s http://localhost:8080  create-job gke-px-pipeline < /tmp/scripts/gke-px-pipeline.xml