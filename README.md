## Rhymix Dev container
라이믹스 코드 테스트를 손쉽게 할수 있도록 도와주는 템플릿 저장소입니다.

## 목차

* [English Readme](#english-readme)
* [FAQ](#faq)
   * [1. 업데이트 방법](#1-업데이트-방법)
   * [2. 초기화 방법](#2-초기화-방법)
* [Disclaimer](#disclaimer)

<!-- Created by https://github.com/ekalinin/github-markdown-toc -->

## English Readme
Check [README-en.md](./README-en.md)

## 템플릿 복제하기
![gh-1](https://user-images.githubusercontent.com/18280396/208420078-de696e55-08c2-41d0-bb59-3368ad913037.png)

1. 이 저장소 상단 Use this template 버튼을 클릭한 뒤, Create a new repository를 누릅니다.

![gh-2](https://user-images.githubusercontent.com/18280396/208420274-87379910-b7a4-4ae5-9b0e-ca034e4f4b78.png)

2. 저장소 이름을 적당히 골라줍니다. 나중에 라이믹스 저장소를 포크할 경우를 대비해서 `rhymix` 이외 이름을 사용하는것을 추천드립니다. (예. `rhymix-devenv`)

![gh-2-optional](https://user-images.githubusercontent.com/18280396/208420462-e9736f0f-2ee2-47ab-b39d-acea9e78dcd5.png)

2-1. (추가 사항) 라이믹스에 기여하기 위한 목적인 경우 Codespace 생성 전 `.env` 파일에 지정된 저장소나 브랜치를 적절히 변경해줍니다.

![gh-3](https://user-images.githubusercontent.com/18280396/208420446-bc1511fb-46b8-45d7-a9f1-2783d8eeefb7.png)

3. `<>` 버튼 -> Codespaces -> 점 3개 -> New with options 를 누릅니다. 그냥 `+` 버튼을 눌러 생성할 경우 서버 없이 생성됩니다(기본값)

![gh-4](https://user-images.githubusercontent.com/18280396/208420856-4be8d717-a368-4b77-b3cf-413ca75b99af.png)

4. 여러 옵션 중 Dev container 관련 옵션을 선택한 뒤 아파치나 nginx 둘 중 하나를 선택합니다. 혹은 서버 생성을 원치 않는 경우 Default를 고릅니다.

![gh-5](https://user-images.githubusercontent.com/18280396/208421015-8a195b83-0fb0-4338-a75d-e7f7ef957b8f.png)

5. 이외 서버 위치 옵션이나 사양을 선택 후 최하단 `Create codespace` 버튼을 누릅니다.

![gh-6](https://user-images.githubusercontent.com/18280396/208421110-c2002cbe-5989-413f-8dff-c120673f18e2.png)

6. 처음 실행하는 경우 컨테이너 빌드 과정이 끝나면 편집기가 열립니다.

![gh-7](https://user-images.githubusercontent.com/18280396/208421748-fc44dddf-2239-4fe9-8bd9-d24dc3a55d43.png)

7. 포트 탭 선택후 첫번째 항목 로컬 주소를 컨트롤+클릭하거나 지구본 모양을 누르면 라이믹스가 자동 설치된 뒤 열립니다.

로그인 계정은 다음과 같습니다.

```
이메일 : admin@admin.net
비밀번호 : admin
```

## FAQ
### 1. 업데이트 방법
`rhymix` 폴더 안에서 `git pull` 명령을 실행합니다.

### 2. 초기화 방법
컨트롤(혹은 커맨드)+쉬프트+P 단축키 입력후 rebuild를 검색해서 컨테이너를 재빌드합니다. 라이믹스 폴더의 변경사항은 삭제되지 않습니다.

## Disclaimer
이 저장소는 라이믹스 개발 및 테스트를 위해서만 제공됩니다. 제공 목적 이외 사용으로 인한 손실은 책임지지 않습니다.
