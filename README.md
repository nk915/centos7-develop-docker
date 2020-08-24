# CentOS 7 개발 환경



## Docker 파일 구성

- 도커 파일은 현재 /root/workspace 공간이 만들어지며, 해당 경로로 볼륨 지정을 하면됩니다.



## Docker 빌드 방법

- 방법: docker build <image_name> <docker_file_path>
- 예시: docker build app .



## Docker 컨테이너 생성

- 방법: docker run -it --volume="호스트OS경로:컨테이너공유경로" --name <컨테이너이름>  [이미지명:태그]   <쉘>
- 예시: docker run -it --volume="C:/workspace:/root/workspace" --name dev app:lastest /usr/bin/zsh


