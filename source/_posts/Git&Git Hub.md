---
title: "Hexo Blog 생성으로 Git Hub 기초 배우기"
thumbnail: ../images/thumbnail/git.png
toc: true
category: git
---
![github](../images/git.png)

## 개요  
>Hexo 블로그를 만들면서 Git Hub 기초를 습득한다.(Window 환경)  

</br>

## 기본 파일 설치
* <https://nodejs.org> 다운로드 
    node.js command prompt 사용(높은 처리 성능!)
```bash
C:\Users\1>node -v 로 설치 확인
```

* <https://git-scm.com> 다운로드
    소스코드를 효과적으로 관리할 수 있다.(Git Hub 활용)
```bash
C:\Users\1>git --version 으로 설치 확인
```
* hexo 설치
```
C:\Users\1>npm install -g hexo-cli
```

</br>

## Git Hub 설정

>Git Hub 계정 생성 후 두 개의 Repository 생성(포스트 버전 관리 - myblog, 포스트 배포용 관리 - username.github.io)

</br>

## 블로그 만들기
```bash
C:\Users\1\Desktop>hexo init myblog
C:\Users\1\Desktop>cd myblog
C:\Users\1\Desktop\myblog>npm install
C:\Users\1\Desktop\myblog>npm install hexo-server --save
C:\Users\1\Desktop\myblog>npm install hexo-deployer-git --save
```
>_config.yml 파일 수정

```
url: https://username.github.io

deploy:
  type: git
  repo: https://github.com/username/username.github.io.git
  branch: main
```

</br>

## Git Hub 배포
```bash
C:\Users\1\Desktop\myblog>hexo generate
C:\Users\1\Desktop\myblog>hexo server
```
> localhost:4000로 접속해 확인 
```bash
C:\Users\1\Desktop\myblog>hexo deploy
```
>배포 후 username.github.io로 접속 확인

</br>

## 테마 변경

>icarus 버전 설치
```bash
C:\Users\1\Desktop\myblog>npm install -S hexo-theme-icarus
```
>_config.yml 수정
```
theme: icarus
```

</br>

## 소스 업데이트
```bash
C:\Users\1\Desktop\myblog>git config user.name "username"
C:\Users\1\Desktop\myblog>git config user.email "emailaddress"

C:\Users\1\Desktop\myblog>git add .
C:\Users\1\Desktop\myblog>git commit -m "add: new post updated"
C:\Users\1\Desktop\myblog>git push origin master
```