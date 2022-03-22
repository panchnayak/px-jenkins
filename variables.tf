## If you change this variable, You have to change in your AWS credential file:
variable "vpc_name" {
  default = "px-jenkins-vpc"
}

variable "key_name" {
  default = "jenkins-keypair"
}

variable "region" {
  default = "us-east-1"
}

variable "azs" {
  default = ["us-east-1a"]
  type    = list
}

variable "env" {
  default = "dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "volume_size" {
  default = 15
}

variable "aws_ami_id" {
  default = "ami-033b95fb8079dc481"
}

variable "instance_type" {
  default = "t3.large"
}

variable "user_name" {
  type = string
  default = "centos"
}

variable "key_pub" {
  default = "id_rsa.pub"
}

variable "key_private" {
  default = "id_rsa"
}

variable "key_path" {
  default = "~/.ssh"
}

variable "jenkins_sg" {
  default = "jenkins-server-sg"
}

variable "admin_user" {
  default = "pnayak"
}

variable "admin_password" {
  default = "adminPassword"
}

variable "admin_full_name" {
  default = "Panchaleswar Nayak"
}

variable "admin_email" {
  default = "nayak.p@gmail.com"
}

variable "curlimage" {
  default = "appropriate/curl"
}

variable "jqimage" {
  default = "stedolan/jq"
}


variable "java_home" {
  default = "/usr/lib/jvm/openjdk11"
}

variable "jenkins_username" {
  default = "admin"
}

variable "jenkins_password" {
  default = "password"
}

variable "jenkins_ami_id" {
  default = "ami-0e306787811345859"
}


