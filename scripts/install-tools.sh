#!/bin/bash -x
yum update -y
curl -s https://mirror.go-repo.io/centos/go-repo.repo >/etc/yum.repos.d/go-repo.repo
echo W2F6dXJlLWNsaV0KbmFtZT1BenVyZSBDTEkKYmFzZXVybD1odHRwczovL3BhY2thZ2VzLm1pY3Jvc29mdC5jb20veXVtcmVwb3MvYXp1cmUtY2xpCmVuYWJsZWQ9MQpncGdjaGVjaz0xCmdwZ2tleT1odHRwczovL3BhY2thZ2VzLm1pY3Jvc29mdC5jb20va2V5cy9taWNyb3NvZnQuYXNjCg== | base64 -d >/etc/yum.repos.d/azure-cli.repo
yum install -y gcc make wget unzip which less openssh-clients python3-pip golang git azure-cli epel-release openssl
curl https://sdk.cloud.google.com > install.sh
bash ./install.sh --disable-prompts --install-dir=/usr/local/
ln -s /usr/local/google-cloud-sdk/bin/gcloud /usr/local/bin/gcloud
ln -s /usr/local/google-cloud-sdk/bin/gsutil /usr/local/bin/gsutil
ln -s /usr/local/google-cloud-sdk/bin/anthoscli /usr/local/bin/anthoscli
curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip
unzip awscliv2.zip
rm awscliv2.zip
./aws/install
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl
chmod +x kubectl && mv kubectl /usr/local/bin/kubectl
curl -Lo /tmp/pxc.tar.gz https://github.com/portworx/pxc/releases/download/v0.33.0/pxc-v0.33.0.linux.amd64.tar.gz
cd /tmp && tar -zxvf /tmp/pxc.tar.gz
rm /tmp/pxc.tar.gz
mv /tmp/pxc/kubectl-pxc /usr/local/bin/kubectl-pxc
chmod +x /usr/local/bin/kubectl-pxc
alias pxctl='kubectl pxc pxctl'