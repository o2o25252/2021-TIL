# Python 
 

------

## 자료형

### 자료에 대한 타입
+ [숫자](https://github.com/o2o25252/2021-TIL/blob/main/Python/README.md#%EC%88%AB%EC%9E%90)
+ [문자열](https://github.com/o2o25252/2021-TIL/blob/main/Python/README.md#%EB%AC%B8%EC%9E%90%EC%97%B4)
+ 불

### 어떤 값을 담는 자료구조
+ 변수
+ [리스트](https://github.com/o2o25252/2021-TIL/blob/main/Python/README.md#list)
+ 튜플
+ 딕셔너리
+ 집합


### 숫자

```
a = 3
b = 4

print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a//b)
print(a%b)
print(a**b)
```
나누기 / 
몫 // 
나머지 %

### 문자열

다른언어와 같다 
```
"""
     따옴표 3 개는
        이런식 으로 해도
        이걸 알아 먹는다
"""
\ 이걸로도 구분 가능 

a = "2021"
print(a[:2]) //이상: 미만: 간격
즉 처음부터 시작해서 인덱스 2 미만 인 20 이나온다 
print(a[::2]) 
처음부터 끝까지 2간격 으로 

def is_palindrome(s):
    """Check whether a string is a palindrome"""
    return s == s[::-1]
    뒤로 읽는 값과 일반값과 같냐? 
```
*문자열 포메팅*
```
a = "I eat %d apples." % 3
print(a) // i eat 3 apples.
```
이걸 왜 쓰냐..? 
```
b = "I eat " + str(3) + " apples" 
이렇게 쓰기 귀찮으닌깐🤷🏼‍♂️
그러면 이걸 이렇게 여러개 로 도 사용할 수 있다.
number = 10
day = "three"
a = "I ate %d apples. so i was sick for %s days." % (number, day)

print(a)//I ate 10 apples. so i was sick for three days.
```
*문자열 포맷 코드*
코드      | 설명
-------- | --------
%s       | 문자열
%c       | 문자1개
%d       | 정수
%f       | 부동 소수
%o       | 8진수


3.6 번전 이후 부터는 이것도 가능
```
a = "{ age }qwer 1234 { name } qwer".format( name ="임희찬" , age = 27)
print(a)
```
```
name ="int"
a = f"나의 이름은 {name}입니다."

print(a) //나의 이름은 int입니다.
```
```
a = "%10s" % "hi"

print(a)//          hi

b = "%-10sjane." % 'hi'
//'hi          jane.' 뒤로 
```
*실수형*
```
a ="0.4f" % 3.42134234 //간격.소수점 남기는 자리 수

print(a) //3.4213
```
*문자열 개수 세기*
```
a = "hobby"
a.count('b')
//2 
```
*위치 알려주기*
```
a = "hobby"
a.find('b')
//2 처음 찾은 인덱스의 번호만 알려준다 뒤에 나오는 건 알려주지 않는다.
//없다면 -1 을 반환한다.
```
```
a = "Life is too short"
a.index('t')
//8
//없으면 에러
```
*문자열 삽입*
```
a= ","
a.join('abcd')
//'a,b,c,d'

요거는 리스트랑 많이 사용된다.
```
*소문자를 대문자로 바꾸기
```
a = "hi"
a.upper()
//'HI'
a = "HI"
a.lower()
//'hi'
a="    HI   " //양쪽 공백 지우기 
print(a.strip())
//HI
```
*교체하기*
```
a ="Life is too short"
print(a.replace("Life", "Your leg"))
//Your leg is too short
```
*잘라서 리스트 만들기*
```
a ="Life is too short"
print(a.split())
//['Life','is','too','shrt']
```
## List

하나의 변수에 여러개 의 값을 넣고 싶을떄 

```
a = [1,2,3]
b = [4,5,6]

print(a+b) //[1,2,3,4,5,6]

* 기도 가능 
```
*연속 교체*
```
a =["qwer","asdf","zxcv"]
a[0:2] =["1234","4567"] // [이상:미만:간격]

print(a)
// ["1234","4567","zxcv"]

삭제도 가능
a =["qwer","asdf","zxcv"]
a[0:2] =[] // [이상:미만:간격]
//["zxcv"]

a =["qwer","asdf","zxcv"]
del a[0]

print(a)//["asdf","zxcv"]
```
*리스트 맨뒤에 요소 추가*
```
a = [1,2,3]
a.append(4)
//[1,2,3,4]
```
*리스트 정렬*
```
a = [1,4,3,2]
a.sort()
//[1,2,3,4]
```
*리스트 뒤집기*
```
a = ['a','c','b']
a.reverse()
//['b','c','a']
```
*insert*
```
a =[1,5,3]
a.insert(0,4)// 0번쨰 인덱스에 4를 추가
print(a.index(a))//[4,1,5,3]
```
*요소 제거*
```
a = [1,2,3,1,2,3]
a.remove(3)//값을 제거
//[1,2,1,2]
```
*리스트 요소 끄집어내기*
```
a = [1,2,3]
a.pop()
//3
print(a)//[1,2] 마지막 요소를 빼낸다

```
*count*
```
a =[1,5,3,1,1]

print(a.count(1)) // 3

```
*리스트 확장*
```
a = [1,2,3]
a.extent([4,5])
//[1,2,3,4,5]
```
