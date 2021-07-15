FROM centos:7

RUN yum install sudo -y
RUN yum install net-tools -y
RUN yum install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade -y
RUN yum install openssh-server openssh -y
RUN yum install initscripts -y
RUN yum install jenkins java-11-openjdk-devel -y 
RUN yum install sshpass -y

#RUN systemctl daemon-reload
#RUN systemctl status jenkins

CMD ["/sbin/init"]