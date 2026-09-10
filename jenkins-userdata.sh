#!/bin/bash
sudo dnf update -y

sudo dnf install -y wget java-21-amazon-corretto-devel git

sudo wget -O /etc/yum.repos.d/jenkins.repo https://jenkins.io
sudo rpm --import https://jenkins.io

sudo dnf clean all
sudo dnf install -y jenkins

sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

