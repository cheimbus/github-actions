#!/bin/bash

echo "-------------서버 시작-------------"
docker stop github-actions || true
docker rm github-actions || true
docker pull 390402538983.dkr.ecr.ap-northeast-2.amazonaws.com/github-actions:latest
docker run -d --name github-actions -p 8080:8080 390402538983.dkr.ecr.ap-northeast-2.amazonaws.com/github-actions:latest
echo "-------------서버 배포 끝-------------"