# swift-photoframe
iOS 첫번째 미션

<details>
<summary>프로젝트 생성하기</summary>

## 주요 작업

- [x]  미션해결 저장소를 fork하고 clone한다.
- [x]  iOS 템플릿으로 프로젝트 생성한다.
- [x]  미션 해결하고 변경된 파일을 commit하고 원격 저장소에 push한다.
- [ ]  GitHub 사이트에서 upstream 저장소에 PR 보낸다.
- [ ]  PR 머지 이후 최종 버전을 로컬로 pull 가져온다.

## 학습 키워드

**Pull Request 하기 위한 과정들..**

1. Fork
2. clone, remote설정
3. branch 생성
4. 수정 작업 후 add, commit, push
5. Pull Request 생성
6. 코드리뷰, Merge Pull Reqest
7. Merge 이후 branch 삭제 및 동기화

**TabBarController :** 여러 뷰를 컨트롤러를 관리하는 컨테이너 뷰 컨트롤러

**ViewDidLoad :** 뷰의 컨트롤러가 메모리에 로드되고 난 후에 호출된다.

뷰의 로딩이 완료되었을 때, 시스템에 의해 자동으로 호출되기 때문에 초기화면을 구성하는 용도로 메서드를 주로 사용한다.

## 고민과 해결

첫 번째 Scene에 Custom Class를 ViewController지정하기
<img width="260" alt="스크린샷 2024-03-04 오후 5 04 06" src="https://github.com/joho2022/joho2022/assets/104732020/2a0f3841-bb56-4d27-9cd0-5a2cea5ff9e2">

## 결과

<img width="346" alt="스크린샷 2024-03-04 오후 4 44 37" src="https://github.com/joho2022/joho2022/assets/104732020/830045a3-1dcf-4581-9f5b-3e71c592b043">
<img width="745" alt="스크린샷 2024-03-04 오후 4 42 10" src="https://github.com/joho2022/joho2022/assets/104732020/37ef7c71-96de-4efc-968e-5cac41d1b87a">

## UITabBarController 와 UITabBar?
- UITabBarController
  
여러 뷰 컨트롤러를 관리하는 컨테이너 뷰 컨트롤러이다. 사용자가 탭 바의 탭을 선택하면, UITabBarController는 해당 탭에 연결된 뷰 컨트롤러의 뷰를 표시한다. ex) 사용자가 쉽게 접근할 수 있도록 하기 위해 사용한다.

- UITabBar

하나 이상의 탭 바 아이템을 표시하는 컨트롤이다. 일반적으로 하단 모서리에 위치하고, TabBar 내의 TabItem을 직접 추가, 삭제, 변경, 선택에 대한 응답을 제어하기 위해서는 delegate를 사용해야 한다.

## UITabBarController 와 UITabBar의 차이점
  UITabBarController는 탭 바 인터페이스를 가지는 컨테이너 뷰 컨트롤러이며,
  UITabBar는 단지 탭 바 UI 컴포넌트 자체를 나타내며, 탭 바 아이템의 선택과 관련된 동작은 직접 관리해야 한다.
  
  
## 관련 클래스
- UITabBarItem
탭 바에서 각 탭을 나타내는 아이템이다. 타이틀, 이미지, 선택된 이미지 등을 설정할 수 있다.

- UINavigationController
뷰 컨트롤러의 한 종류로, 네비게이션 스택 관리를 위해 사용된다.
ViewController는 계층을 이루면서 구성하고, 대표적으로 알려진 것이 NavigationController, TabBarController 이다.
 
</div>
</details>

