#!/bin/bash
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sudo su --
hostname tomcat-server
amazon-linux-extras install -y java-openjdk11
cd /opt/
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.49.tar.gz
tar -xvzf apache-tomcat-8.5.49.tar.gz
mv apache-tomcat-8.5.49 tomcat
cd /opt/tomcat/bin/
./startup.sh
amazon-linux-extras install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
yum install -y git
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
yum install git -y
