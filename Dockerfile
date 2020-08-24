# 1. CentOS 설치
FROM centos:7 
MAINTAINER devnk915@gmail.com

# 2. 작업 디렉토리 생성
RUN mkdir -p /root/workspace

# 3. 개발 패키지 설치
RUN yum update
RUN yum groupinstall -y "Development Tools"
RUN yum install -y postgresql-devel openssl-devel libcurl-devel libcurl
RUN yum install -y mysql-devel mysql-lib
RUN yum install -y libssh2-devel

# 4. 부가 서비스
RUN yum install -y vim-enhanced ctags cscope zsh
RUN curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


# 5. 환경 변수 지정
WORKDIR /root/workspace
VOLUME ["/root/workspace"]

# 6. 쉘 지정
CMD /usr/bin/zsh
