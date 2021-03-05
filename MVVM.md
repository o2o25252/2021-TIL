# MVVM ♻️

### 목적
+  기술부채 최소화
+  재사용 및 지속 가능

구첵적으로 코드 구조에 대한 전략 

 이전에는  MVC 패턴을 사용했는데 "MVC"  는 무엇일까?
 
 Model(데이터:Struct) , View(UI요소:UIView) , Controller(중계자:UIViewController)
 
 컨트롤러 가 너무 많이 관여해서 부채가발생 하여ㅑ..? 현재 MVVM  을 많이 사용중이다.
 
 <img width="723" alt="스크린샷 2021-03-05 오후 9 51 27" src="https://user-images.githubusercontent.com/61407010/110117942-f1fc3380-7dfc-11eb-81de-1db81b599e0f.png">

 + Model(데이터:Struct)
 + View(UI요소:UIView, UIViewController)
 + VieModel(중계자: ViewModel)

#### 차이점 
+ 뷰 컨트롤러가 모델에 직접 접근하지 못한다.
+ 뷰 컨트롤러가 뷰 모델 클레스 를 새로 받았다.
+ 뷰 컨트롤러가 뷰 레이어에 있다

개선점 : 뷰컨트롤러에 역활을 축소 그래서 할일이 명확 해서 수정이 명확하고 유지보수 가 좋아진다.
<img width="782" alt="스크린샷 2021-03-05 오후 9 58 42" src="https://user-images.githubusercontent.com/61407010/110118597-f412c200-7dfd-11eb-9a80-d827b918aabd.png">
<img width="790" alt="스크린샷 2021-03-05 오후 9 58 57" src="https://user-images.githubusercontent.com/61407010/110118626-fd9c2a00-7dfd-11eb-9225-ca4e6ca3d370.png">

