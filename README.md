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

결과
![Simulator Screenshot - iPhone 15 Pro - 2024-03-05 at 11 51 28](https://github.com/codesquad-members-2024/swift-photoframe/assets/104732020/3a71fe37-87c4-4553-8ee0-5f2e5d3b641c)

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
