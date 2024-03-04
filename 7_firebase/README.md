# 7장 파이어베이스

패키지 파이어베이스와 관련된 커리큘럼 입니다.

## 🔴 0. 참조 할 만한 링크

- [firebase 사이트](https://firebase.google.com/?hl=ko)
- [firebase core 패키지](https://pub.dev/packages/firebase_core)
- [firebase message 패키지](https://pub.dev/packages/firebase_messaging)
- [firebase auth 패키지](https://pub.dev/packages/firebase_auth)

## 🟣 1. 목차

### 1.1. firebase 패키지 다운

### 1.2. 프로젝트 firebase에 연결하기

### 1.3. firebase 설정

### 1.4. token값 받아보기

### 1.5. FCM 받아보기

***

## 🔵 2. 개념

### 2.1. cli 란?

### 2.2. firebase 란?

### 2.3. token 이란?

### 2.4. FCM 이란?

### 2.5. APNS 란?

### 2.6. analysis 란?

***

## 🟡 3. 문제

### 3.1. 플러터와 파이어베이스 연동 해보기

### 3.2. FCM 연동 해보기

### 3.3. FCM 테스트 해보기

### 3.4. 애널리틱스 연동 해보기

### 3.5. 문자 인증 연동 해보기

### 3.6. 소셜로그인 연동 해보기

***

## 🟡 4. 설치

### 4.1. npm 설치 확인
    node -v
    npm -v

### 4.2. firebase 설치 - 확인 - 로그인
    npm install -g firebase-tools

    firebase --version

    firebase login // 로그인 되어있으면 정보 조회 가능
    or
    firebase logout
    or
    firebase login --reauth // 이미 로그인이 되어있는 경우

### 4.3. firebase 프로젝트 생성

### 4.4. dart pub global activate flutterfire_cli

### 4.5. flutterfire configure --project=fir-sample-e7ae3

### 4.6. firebase_option.dart 생성 확인

### 4.7. firebase 사이트에서 연동되었는지 확인