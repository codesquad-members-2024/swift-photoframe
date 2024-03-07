# swift-photoframe
iOS 첫번째 미션

<details>
<summary>프로젝트 생성하기</summary>

## 주요 작업

- [x]  미션해결 저장소를 fork하고 clone한다.
- [x]  iOS 템플릿으로 프로젝트 생성한다.
- [x]  미션 해결하고 변경된 파일을 commit하고 원격 저장소에 push한다.
- [x]  GitHub 사이트에서 upstream 저장소에 PR 보낸다.
- [x]  PR 머지 이후 최종 버전을 로컬로 pull 가져온다.

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
<img width="201" alt="스크린샷 2024-03-05 오후 12 13 33" src="https://github.com/joho2022/joho2022/assets/104732020/d189fa6c-c2ca-4561-a6a2-0508eca32d51">

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
ViewController는 계층을 이루면서 구성하고, 대표적으로 알려진 것이 NavigationController, TabBarController 이다..
 
</div>
</details>

&nbsp;

<details>
<summary>IBOutlet 연결하기</summary>

## 주요 작업

- [x]  First Scene에 있는 UILabel을 IBOutle으로 연결한다.
- [x]  연결한 아웃렛 변수에 값을 변경한다.
- [x]  firstLabel의 속성을 변경한다.

## 학습 키워드

**IBOutlet :** 스토리보드나 XIB 파일 내의 뷰와 같은 인터페이스 요소들을 코드 내의 변수나 상수에 연결할 수 있는 키워드

**Storyboard :** iOS와 macOS 앱 개발에 사용되는 시각적 도구로, Interface Builder의 일부

## 고민과 해결
<img width="260" alt="스크린샷 2024-03-05 오전 10 22 08" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/dbbafe88-b152-4fcb-b275-44a6190d551f">
글자가 잘리는 현상 발생

- firstLabel.numberOfLines = 0 : 여러 줄의 텍스트를 표시할 수 있음, 현재 가로 줄을 해결해야하기 때문에 해결 안됨
- Label을 만들때 Label의 크기를 조절안해서 발생 → 크기를 조절함

## 결과
<img width="201" alt="스크린샷 2024-03-05 오후 12 13 33" src="https://github.com/joho2022/joho2022/assets/104732020/d189fa6c-c2ca-4561-a6a2-0508eca32d51">

</div>
</details>


<details>
<summary>UILabel 클래스 속성(Property)는 어떤게 있는가??</summary>

### text

레이블이 표시하는 기본 문자열, 이 속성을 통해 레이블에 표시될 텍스트를 넣을 수 있다

### **attributedText**

**NSAttributedString** 객체를 사용하여 문자열에 스타일을 적용할 수 있다.

1. example
<img width="290" alt="스크린샷 2024-03-05 오전 10 51 27" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/229fdec5-8649-434e-a330-eccb35ccf35e">

```swift 
let fullText = firstLabel.text ?? ""
let attributedString = NSMutableAttributedString(string: fullText)
        
let range1 = (fullText as NSString).range(of: "KAI")
        
attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range1)
        
let range2 = (fullText as NSString).range(of: "액자")
        
attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range2)
firstLabel.attributedText = attributedString
```

### **textColor**

레이블 텍스트의 색상

- example
```swift
myLabel.textColor = UIColor.red

// RGB 값을 사용한 커스텀 색상
myLabel.textColor = UIColor(red: 0.1, green: 0.6, blue: 0.4, alpha: 1.0)
```

### **textAlignment**

텍스트의 수평 정렬을 결정한다.
![textAlignment](https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/8dd55150-eb03-471f-a218-c9cd3afd226e)

### **font**
```swift
// 기본 시스템 폰트 사용
firstLabel.font = UIFont.systemFont(ofSize: 40)

// 시스템 폰트 사용, 두께는 bold
firstLabel.font = UIFont.boldSystemFont(ofSize: 40)

// 시스템 폰트 사용, 두께는 semibold
firstLabel.font = UIFont.systemFont(ofSize: 40, weight: .semibold)

// 이탤릭 시스템 폰트 사용
firstLabel.font = UIFont.italicSystemFont(ofSize: 40)
```

### **lineBreakMode, lineBreakStrategy**

텍스트의 줄 바꿈 처리 방식을 결정하는 속성이다.

- **lineBreakMode**

UILabel이 여러 줄의 텍스트를 표시할 수 없을 때 줄바꿈을 결정한다.

```swift
.byWordWrapping: 단어 단위로 줄바꿈, 가장 기본적인 줄 바꿈 방식
.byCharWrapping: 문자 단위로 줄바꿈
.byClipping: 텍스트가 레이블 경계를 넘어가면 잘라낸다.
.byTruncatingHead: 텍스트의 앞부분을 생략하고 끝부분을 보여준다.
.byTruncatingTail: 텍스트의 끝부분을 생략한다.
.byTruncatingMiddle: 텍스트의 중간을 생략하고 앞뒤를 보여준다.
```

- **lineBreakStrategy**

iOS 13.0 이상에서 도입되었다. 텍스트의 줄바꿈 방식을 더 세밀하게 제어한다.
```swift
.pushOut: 가능한 한 줄바꿈을 피하여 단어들을 밀어낸다.
.hangulWordPriority: 한글 처리에 최적화된 줄바꿈을 사용한다. (주로 한글 텍스트에 적용)
.standard: 표준 줄바꿈 규칙을 사용한다.
```

### **isEnabled**

레이블이 활성화되어 있는지 여부 결정한다.

false를 설정하면 텍스트 색상이 흐려짐

## **텍스트 레이아웃**

### numberOfLines

텍스트를 표시할 최대 줄 수, 0으로 설정되면 무제한 줄을 표시할 수 있고, 텍스트의 야에 따라 높이가 조정된다

### **adjustsFontSizeToFitWidth**

속성이 true되면, 레이블의 너비에 맞춰서 텍스트 폰트크기가 자동으로 조정된다.

### **baselineAdjustment**

폰트 크기가 조정될 때 기준선의 조정방식을 결정한다.

### **minimumScaleFactor**

**adjustsFontSizeToFitWidth** 속성이 true인 경우, 텍스트 폰트 크기를 줄일 수 있는 최소 비율을 지정한다.

## 하이라이트

### highlightedTextColor

레이블의 텍스트에 적용된 강조 표시 색상

### isHighlighted

강조 표시로 레이블을 그릴지 여부를 나타내는 부울값

## 그림자

### shadowColor

텍스트의 그림자 색상

### shadowOffset

텍스트의 그림자 오프셋 (점 단위, 크기 및 방향 지정한다.)

</div>
</details>

&nbsp;

<details>
<summary>IBAction 연결하기</summary>

## 주요 작업

- [x]  IBAction을 연결하고 원하는 로직을 구현한다.
- [x]  버튼에 IBAction을 추가할 때 이벤트 종류를 학습한다.

## 학습 키워드

**IBAction : UI 요소(버튼)를 사용자가 해당 요소와 상호작용할 때 발생하는 이벤트를 코드 내의 메서드와 연결하기 위해 사용되는 키워드**

**UIButton : 사용자 상호 작용에 응답하여 사용자 지정 코드를 실행하는 컨트롤,** 

1. 사용자가 버튼을 탭할 때 특정 작업을 수행
2. 다양한 스타일 지원 (텍스트, 이미지), 
3. 상태에 따른 변화: **UIButton**은 다양한 상태(**normal**, **highlighted**, **disabled** 등)를 가진다.

## 고민과 해결

### IBOutlet 변수명 변경하는 법

마우스 우측클릭 → Refactor → Rename : @IBOutlet변수의 이름을 스토리보드와 연동을 유지한 채 변경 가능함

### IBAction 삭제 시 주의할 점

1. 코드 내 IBAction을 지워도 완벽하게 삭제되지 않음
2. IBAction을 연결한 객체를 클릭한 뒤 확인해보면 남아있는 action의 x를 눌러줘야 완벽하게 삭제가 된다.
<img width="644" alt="스크린샷 2024-03-05 오후 2 36 28" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/d5a5a6d0-ed19-4088-9af4-c6ee205865f1">

    

## 결과

### Before

<img width="417" alt="스크린샷 2024-03-05 오후 2 39 05" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/e864dbdb-0a81-4553-9759-41b3736be072">

### After
<img width="417" alt="스크린샷 2024-03-05 오후 2 39 13" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/a6a44dd5-4487-4701-ab30-b0027f03d276">

</div>
</details>

<details>
<summary>IBAction 연결하기-추가학습</summary>

### IBAction과 IBOutlet 연결 구조

앱 실행 중 사용자의 UI 요소와의 상호 작용은 

**IBAction** 메서드를 통해 뷰에서 컨트롤러에 입력/변화를 준다.

**IBOutlet**을 통한 연결로 컨트롤러가 뷰에서 UI 요소의 상태를 업데이트한다.

### IBAction 이벤트 종류

### Did End On Exit

사용자가 텍스트 필드에서 편집을 마치고, Return 키, Done 키 등을 눌러 텍스트 필드의 편집을 종료할 때 발생

- 사용자가 로그인 폼에서 비밀번호 입력 후 Return 키를 눌러 로그인을 시도할 때 처리

### Editing Changed

텍스트 필드의 내용이 변경될 때마다 발생

사용자가 입력하는 동안 검색 결과를 필터링하거나 입력값을 검증 체크할 때 사용

### Editing Did Begin

사용자가 텍스트 필드에 터치하여 편집을 시작할 때 발생

텍스트 필드 선택 시 관련된 도움말이나 힌트를 표시할 때 사용

### Editing Did End

사용자가 텍스트 필드의 편집을 종료할 때 발생

편집이 끝난 후 입력 데이터의 검증, 텍스트 필드의 스타일을 변경할 때 사용

## **위에 4가지는 UITextField에서 사용자의 입력과 상호작용을 감지하고 처리하기 위해 사용**

### Primary Action Triggered

iOS 14이상에서 UIControlEvents에 추가된 새로운 이벤트 유형이다.

버튼을 연속해서 빠르게 여러 번 탭할 때 발생, 주로 사용자가 같은 버튼을 반복해서 누를 필요가 있을 때 사용. (숫자를 증가시키거나 감소시키는 Stepper ****컨트롤에 사용,

- **Touch Down** 이벤트가 처음 탭할 때 발생하는 반면,
- **Touch Down Repeat**은 그 이후 연속된 탭에서 발생하는 이벤트

### Touch Cancel

현재 터치가 취소되었을 때 발생 (전화나 텍스트 메시지 알림 등으로 인해 앱이 중단될 때 발생)

### Touch Down

사용자가 버튼 내부 어디에서든 터치를 시작할 때 발생

### Touch Down Repeat

사용자가 컨트롤을 길게 누르고 있을 때, **touchDown** 이벤트에 이어서 발생

### Touch Drag Enter

사용자가 버튼 외부에서 터치를 시작하고, 드래그하여 버튼 내부로 들어올 때 발생

### Touch Drag Exit

사용자가 버튼 내부에서 터치를 시작하고, 드래그하여 버튼 외부로 나갈 때 발생

### Touch Drag Outside

사용자가 버튼 내부에서 터치를 시작하고, 손가락을 들지 않은 채로 버튼 외부로 드래그할 때 발생

### Touch Up Outside

사용자가 버튼 내부에서 터치를 시작했지만, 버튼 외부에서 손가락을 떼었을 때 발생

### **valueChanged**

슬라이더, 스위치, 세그먼트 컨트롤과 같이 값이 변경될 때 발생하는 이벤트, 버튼에는 직접적으로 적용되지 않고, UIControl을 상속받은 다른 컨트롤에서 사용한다.

## 버튼에 액션을 여러개 추가할 수 있을까? ✅

<img width="300" alt="스크린샷_2024-03-05_오후_3 27 08" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/2898a242-8c50-44ce-9092-778e1e62ec3a">

## 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?✅
<img width="670" alt="스크린샷 2024-03-05 오후 4 07 11" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/9464c3ad-1d72-4eca-a9e3-73f351a373ce">

</div>
</details>

&nbsp;

<details>
<summary>Scene을 Segue로 연결하기</summary>

## 주요 작업

- [x]  새로운 Scene을 추가하고, Segue로 연결하기
- [x]  Segue에 액션에 있는 여러 항목들의 효과를 비교하며 학습하기

## 학습 키워드

<img width="521" alt="UIStructure" src="https://github.com/codesquad-members-2024/be-chess/assets/104732020/aa9eb0d3-1c8e-47ac-b42e-29249253a830">

### UIScreen

물리적인 화면의 속성을 나타낸다.

iOS 디바이스는 하나이상의 화면을 가질 수 있고, 기본 디스플레이와 외부 디스플레이처럼 각 화면은 UIScreen 객체로 표현된다.

### UIWindowScene

iOS13부터 도입되어 앱의 UI 인스턴스를 나타낸다.

하나의 앱이 여러개의 UIWindowScene을 가질 수 있따.

### UIWindow

앱의 콘텐츠를 담는 컨테이너,

하나 이상의 UIView를 포함한다. 사용자 인터페이스의 배경을 제공한다.

### UIView

화면에 표시되는 모든 시각적 요소의 기본 클래스

버튼, 텍스트 라벨, 이미지 등등.. 모든 UI컴포넌트는 UIView를 상속받아 구현된다.

**Scene :** 앱의 특정 화면 또는 뷰 컨트롤러의 인스턴스를 시각적으로 표현한다. 즉 사용자 인터페이스의 구조를 시각적으로 구성한 것

**Segue :** 뷰 컨트롤러 간의 화면전환

## 고민과 해결

## Segue에 액션에 있는 여러 항목들은 어떤 효과가 있는가?

### 모달

사용자에게 일시적으로 집중을 요구하는 컨텐츠를 표시할 때 사용한다.

### show(push)

UINavigationController에서 사용된다. 목적지 뷰 컨트롤러가 네비게이션 스택에 푸시된다.

네비게이션 바가 있을 경우, 자동으로 ‘뒤로’버튼이 제공되어 이전화면으로 돌아갈 수 있다.

→ 현재는 NavigationController가 아니기 때문에 모달형식으로 표시된다.

### show Detail

원래 화면을 Master, 새 화면을 Detail로 표시한다.

→ 아이폰에서는 똑같아 보이지만 아이패드에서는 화면이 둘로 분할돼서 보이게 된다.

### Present Modally

모달형식으로 표시된다. 원래화면은 새화면 뒤에 존재한다.

### Popover Presentation

아이패드에서 팝업창을 띄운다.

→ 아이폰에서는 show Detail처럼 의미가 없다.

## 결과
<img width="558" alt="스크린샷 2024-03-06 오후 12 54 38" src="https://github.com/codesquad-members-2024/be-chess/assets/104732020/99a8ab46-aaa0-48b9-9876-9a9b82842ff6">

</div>
</details>

&nbsp;

<details>
<summary>ViewController 연결하기</summary>

## 🎯주요 작업

- [x]  ViewController 역할과 동작 방식 학습
- [x]  ViewController 콜백  함수 역할과 실행순서 학습
- [x]  ViewController와 Scene 연결
- [x]  Segue를 제거하고 다음 화면을 보여줄 때 코드구현

## 📚학습 키워드
![다운로드](https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/1bcc76a9-1b97-4a77-8049-4db1cd47adc1)

### View LifeCycle : 뷰 컨트롤러의 생성부터 소멸까지의 생명주기

### loadView()

뷰 컨트롤러가 관리하는 뷰가 로드되는 단계, 직접 호출하는 경우는 거의 없다

### viewDidLoad()

뷰의 로딩이 완료된 후 호출된다. 뷰의 초기 설정을 구성하는데 사용,

이 시점에 뷰의 계층구조가 메모리에 로드되었지만, 아직 화면에 나타나지 않은 상태

### viewWillAppear

뷰 컨트롤러의 뷰가 뷰 계층에 추가되고 화면에 보이기 직전에 호출한다.

뷰의 크기 조정, 데이터 새로고침 등이 이루어질 수 있다.

### viewDidAppear

뷰 컨트롤러의 뷰가 뷰 계층에 추가되어 화면에 나타난 직후 호출된다.

애니메이션을 시작하거나, 뷰가 나타난 후 필요한 작업을 수행할 때 사용

### viewWillDisappear

뷰 컨트롤러의 뷰가 뷰 계층에서 사라지기 직전에 호출된다.

이 시점에서 작업을 정리하거나, 키보드를 숨기는 등의 작업을 수행할 때 사용

### viewDidDisappear

뷰 컨트롤러의 뷰가 뷰 계층에서 사라지고 화면에서 사라진 직후 호출된다.

### ViewController : iOS 앱에서 화면의 기본단위의 “뷰”를 관리하는 역할

UIKit프레임워크의 중심적인 역할을 하는 클래스 중 하나,

사용자 인터페이스의 화면을 담당,

즉, UIViewController는 하나 이상의 뷰(UIView 객체)를 관리하며, 이 뷰들은 사용자와의 상호작용을 처리하고 데이터를 표시

## 💻결과
![step5](https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/5d36290c-a85f-4edc-88d4-a85164da2634)
<img width="702" alt="스크린샷 2024-03-07 오전 7 29 28" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/7e1be3e0-9760-4e4c-b063-c45ba203dc12">

## 📚추가학습

## 뷰 컨트롤러와 관련된…

### viewController 역할

- 뷰 계층 관리한다
- 뷰를 관리하면서 필요한 데이터 사이 매개체이다
- 화면 전체의 사용자 상호작용과 리소스를 관리한다
- 화면 사이즈, 회전에 대해 대응한다.

root view controller는 화면을 가득 채우는 것!!!!!!!

### MVC (Model View Controller)

디자인 패턴, 애플리케이션을 세 가지 구성요소로 나눠 관리한다.

- Model : 데이터와 비즈니스 담당
- View : 사용자 인터페이스 담당
- Controller : 모델과 뷰 사이의 상호작용 - ViewController는 여기에 담당

### Scene

메뉴, 게임 플레이, 점수 화면처럼 사용자에게 보여지는 하나의 화면

## UIScene

iOS13에 도입됨. Scene의 생명주기를 관리하는 클래스라고 생각, UIScene을 사용함으로

앱은 여러개의 독립적인 Scene을 사용할 수 있음
![b8139742d00d42ac54ef57499fb91db1](https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/2a666d45-8f37-4d85-bd10-de6c6995e2be)

ex ) iPadOS의 Split View와 같은 고급 멀티태스킹 기능

### UIWindowScene

UIScene의 서브클래스

하나의 앱이 여러개의 UIWindowScene을 가질 수 있다. 그리고 하나 이상의 윈도우(Window)를 관리하는 데 특화된 클래스

멀티 윈도우 환경에서 각 윈도우의 생명 주기와 관련된 이벤트를 처리

### Window

보통 아무 그려지는 것이 없고, 검정색 바탕, 그위에 rootViewController가 윈도우를 가득채우는 역할

## System View Controllers

애플은 View Controller를 자주 사용하라고 권장한다

이때, 개발자가 자주 사용하는 표준 사용자 인터페이스를 쉽게 구현할 수 있도록, 일관된 사용자 경험을 제공하기 위해 iOS 시스템에 의해 사전에 디자인되고 구현된 컨트롤러이다.

## Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법.. 3가지가 있음

1. ViewController의 view 바꿔치기
    1. ViewController의 view를 바꿔치는 방법은 메모리 overflow 위험이 있기 때문에 좋은 방법이 아니다.
2. ViewController가 다른 ViewController를 호출(present)
<img width="857" alt="스크린샷 2024-03-07 오후 1 17 56" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/b6c368fe-6edc-4faf-b4ac-880ccdf40939">

3. NavigationViewController 사용하여 화면 전환(push)

</div>
</details>

&nbsp;

<details>
<summary>Container ViewController 활용하기</summary>

## 🎯주요 작업

- [x]  네비게이션 컨트롤러를 Embed시켜서 동작

## 📚학습 키워드

### **ViewController Container**

직접 무언가를 보여주는 역할이 아니며, 뷰 컨트롤러 간에 부모-자식 관계를 형성하여 자식을 관리하는 역할을 하는 뷰 뷰컨트롤러이다.

즉, viewController Container가 Content View Controller들을 관리하는 것으로 하나의 개념으로 생각한다.

UIKit에서 기본적으로 제공하는 System Container View Controller들이 있다.

- UITabBarController
- UINavigationController

### **TabBarController**

 화면 하단에 위치한 탭 바를 통해 사용자는 다양한 섹션(뷰 컨트롤러) 사이를 쉽게 전환할 수 있다.

소셜 미디어 앱의 예시) 홈 피드,  검색 기능,  프로필 설정

### **NavigationController**

계층적인 콘텐츠 구조, 뷰 컨트롤러를 스택에 넣고(pop and push) 빼는 방식으로 관리. 

화면 상단의 네비게이션 바를 통해 사용자는 현재 위치를 확인하고 이전 화면으로 돌아갈 수 있다.

결론…

- **UITabBarController:** 앱의 주요 섹션 간의 전환을 위해 사용
- **UINavigationController:** 각 섹션 내의 상세 내용이나 추가 단계로 이동을 관리하기 위해 사용

## 💻고민과 해결

### 내비게이션 컨트롤러가 있을 경우와 없을 경우 화면 전환 동작이 어떻게 다른지, 화면들 포함관계가 있는지에 대해..

### 네비게이션 컨트롤러가 있는 경우 ✅
<img width="403" alt="스크린샷 2024-03-07 오후 5 05 30" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/1694a273-07a7-4e52-b306-d08c6f0dc586">

하나 이상의 뷰 컨트롤러를 계층적으로 관리하게 된다. 

사용하게 되면 뷰 컨트롤러들이 스택으로 쌓이게 된다.

- 사용자가 새로운 화면으로 이동하면 뷰 컨트롤러가 스택의 맨위에 push
- 사용자가 이전 화면으로 이동하면 뷰 컨트롤러가 스택에서 pop → 화면이 사라짐

네비게이션 바를 통해 자동으로 ‘뒤로’버튼이 제공되고, 사용자가 계층적인 콘텐츠 구조를 쉽게 파악이 가능하다.

### 네비게이션 컨트롤러가 없는 경우 ❌
<img width="403" alt="스크린샷 2024-03-07 오후 5 05 42" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/83f7c28e-1fb9-4174-9567-3ca95460c404">

계층적인 구조가 아닌, 설정화면이나 로그인 화면처럼 사용자가 임시로 방문하는 화면에 주로 사용한다.

모달 형식으로 표시되고 뷰 컨트롤러는 이전 화면의 위에 오버레이 형태로 표시된다.

overlay: 뷰 원본의 공간을 기준으로 그 위에 새로운 뷰를 중첩하여 쌓는 기능을 하는 수식어

각각의 모달은 독립적인 관계이다.

화면은 present(_:animated:completion:)메서드, dismiss(animated:completion:) 메서드통해 동작한다.

## 🤔결과
![ContainerViewController](https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/6cb8ea16-1672-4c1b-9493-9d32f59bb133)

## 📚추가학습

## 뷰컨트롤러 컨테이너는 또 어떤 클래스가 있는가?

### UISplitViewController
<img width="590" alt="ui-split-view-overview~dark@2x" src="https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/0e8b344c-9e8c-4fd0-a0a0-c7e2a8fa634f">

iPad / 화면을 두 영역으로 나누어서, 마스터/디테일 인터페이스를 구현

예시) 한쪽에는 목록, 다른 한쪽에는 세부 정보

SplitView는 Navigation Controller들에 담겨있는 child view controller들을 감싸고 있다.

만약 Navigation Controller 없이 child View controller를 SplitView에 연결하면, SplitView가 알아서 Navigation Controller를 생성!!

### **UIPageViewController**

사용자가 좌우로 스와이프하여 페이지 간을 전환할 수 있는 인터페이스를 제공

페이지 기반의 콘텐츠나 연속된 데이터 컬렉션을 보여줄 때 사용한다. ( 각 페이지는 뷰 컨트롤러로 관리)

## 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인가?

네비게이션 컨트롤러는 스택의 동작 방식으로 작동된다. 

스택은 LIFO( Last in First Out)으로 마지막 추가된 항목이 가장 먼저 제거되는 원리로 유래되어서 관련의 메서드가 push, pop이다.

</div>
</details>
