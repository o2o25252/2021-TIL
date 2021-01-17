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
+ [튜플](https://github.com/o2o25252/2021-TIL/blob/main/Python/README.md#%ED%8A%9C%ED%94%8C)
+ [딕셔너리](https://github.com/o2o25252/2021-TIL/tree/main/Python#%EB%94%95%EC%85%94%EB%84%88%EB%A6%AC)
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

## 튜플

리스트와 튜플 의 차이점은 
```a=[1,2,3] // 리스트 추가 삭제 변경가능```
```b=(1,2,3) // 튜플 고정되어있다. 보기만 가능 (read only)```

```
 t1 =(1,2,'a','b')
>>> del t1[0]
Traceback (most recent call last):
  File "<pyshell#6>", line 1, in <module>
    del t1[0]
TypeError: 'tuple' object doesn't support item deletion

```
```
>>> t1[0] ='c'
Traceback (most recent call last):
  File "<pyshell#7>", line 1, in <module>
    t1[0] ='c'
TypeError: 'tuple' object does not support item assignment
```
보는 것만 가능

인덱싱 , 슬라이싱 된다 .

더하기 곱하기 다 가능하다 그런데 t1,t2 가 변하는게 아니고 단지 t1 ,t2  를 더한 새로운 튜플을 만든 것이다. t1,t2 는 변하지 않는다. 
```
t2 =(3,4)
>>> t1+t2
(1, 2, 'a', 'b', 3, 4)
```

## 딕셔너리
    자바스크립트 에서는 *object* 라고 생각 하면 된다. 
```
>>> dic = {'name':'Eric','age':15}
>>> dic['name']
'Eric'
```   

*딕셔너리 자료형*

*딕셔너리 쌍 추가하기*
```
>>> a ={1:'a'}
>>> a['name'] ="익명"
>>> a
{1: 'a', 'name': '익명'} //어떤 Key  와 Value  
```
*딕셔너리 요소 삭제*
```
del a[1]
>>> a
{'name': '익명'}
```
*딕셔너리 주의 사항*
```
d ={1:'aa',1:'bb'}
>>> d
{1: 'bb'} // 보면 키는 같으면 안된다. 같을 시에는 뒤에 값만 남아있는다.
```
*keys 로 키 만 가져오기*
```
dict = {1:'날토',2:'이치',3:'dl'}
>>> dict.keys()
dict_keys([1, 2, 3])
```
*values 로 벨류 만 가져오기*
```
>>> dict.values()
dict_values(['날토', '이치', 'dl'])
```
*배열 안 튜플 형태 items*
```
>>> dict.items()
dict_items([(1, '날토'), (2, '이치'), (3, 'dl')])

# 언제 쓰이냐 
>>> for k,v in dict.items():
	print("키는:" + str(k))
	print("벨루는" + v)

	
키는:1
벨루는날토
키는:2
벨루는이치
키는:3
벨루는dl
```
*딕셔널 비우기*
```
>>> dict.clear()
>>> dict
{}
```
*get()*
```
#만약에 딕셔너리 안에 어떤 요소를 찾는다고 하면은
 a={1:'a',2:'b',3:'c'}
>>> print(a[4])
Traceback (most recent call last):
  File "<pyshell#36>", line 1, in <module>
    print(a[4])
KeyError: 4
# 에러가 나온다 하지만 get()  을 사용하면
 print(a.get(4))
None
print(a.get(4,'없음'))
없음

이렇게 사용 할 수있다.

또한 딕셔너리의 핵심은 키를이용해서 빠르게 찾는 것이다.
그래서 
print(4 in a) # False
print(1 in a) # True
이렇게 해서찾는 것 또한 가능하다.
```
## 집합
+ 집합에 관련된 것들을 쉽게 처리하기 위해 만들어진 자료형
+ 집합은 원속 각각 고유 하면 중복 될 수 없다.
+ 순서가 없다

*집합 만들기*
```
>>> s1 = set([1,2,3])
>>> s1
{1, 2, 3}
>>> s2 ={1,2,3}
>>> s2
{1, 2, 3}
>>> print(type(s1))
<class 'set'>
>>> print(type(s2))
<class 'set'>
```
어떨때 사용하는가..? *중복 제거*
```
l = [1,2,2,2,3,3]
newList = list(set(l)) # 이렇게 하면 중복이 제거 되면서 다시 list 로 바꾼다. 
```
*문자열 중복 제거*
```
>>> s1 = set("hello")
>>> print(s1)
{'o', 'l', 'h', 'e'} #쪼개 진다
# 하지만 순서는 뒤준박죽이다.
```
*교집합*
```
>>> s1 = set([1,2,3,4,5,6])
>>> s2 = set([4,5,6,7,8,9])
>>> s1 & s2
{4, 5, 6}
s1.intersection(s2)# 이것도 교집합
{4, 5, 6} 
```
*합집합*
```
>>> s1 | s2
{1, 2, 3, 4, 5, 6, 7, 8, 9}
s1.union(s2) # 이것도 합집합 
```
*차집합*
```
# s1 에서 s2 를 뺀 값 출력
 s1-s2
{1, 2, 3}
# 반대 
s2.difference(s1)
{8, 9, 7}
```

*값 1개 추가하기*
```
>>> s1.add(7)
>>> s1
{1, 2, 3, 4, 5, 6, 7}
```
*값 여러 개 추가하기*
```
>>> s1.update([7,8,9,1])
>>> s1
{1, 2, 3, 4, 5, 6, 7, 8, 9}
# 1은 중복 되므로 추가 되지 않는다.
```

## 불

```
>>> a = True
>>> type(a)
<class 'bool'>
```

*자료형의 참과 거짓*
값      | 참 or 거짓
-------- | --------
"python" | True
""       | False
[1,2,3]  | True
[]       | False
()       | False
{}       | False
1        | True
0        | False
None     | False

## 변수

[시각적 변수 보기](http://pythontutor.com/live.html#mode=edit)
*주소*
```
a =[1,2,3]
b = a # a 의 주소를 b 에 주었다.
a[1] = 4 
print(b) # [1,4,3] 1 번째 가 4 로 바뀐 이유는 a의 주소를 가지고 있으므로 같이 변동된다.
#id 주소 확인 
print(id(a)) # 4371000016
print(id(b)) # 4371000016
>>> print(a is b)
True
```
a 의 값을  그대로 b 에게 주고 싶을땐? 
슬라이싱을 사용
```
>>> a = [1,2,3]
>>> b = a[:]
>>> b
[1, 2, 3]
# 이제는 다르다.
>>> a[1] = 4
>>> a
[1, 4, 3]
>>> b
[1, 2, 3]

# 이제는 주소가 다른다
>>> id(a)
140221406474880
>>> id(b)
140221406476032
```
*copy* ```모듈```  를 사용
```
>>> from copy import copy

>>> a = [1,2,3]
>>> b = copy(a)
>>> a[1] = 4
>>> id(a)
140221412654272
>>> id(b)
140221406386304

```
*변수를 만드는 여러가지 방법*

```
>>> a,b =('python','life')
>>> a
'python'
>>> 
>>> b
'life'
```

```
(a,b) = ('python','life')
```

```
(a,b) = 'python','life'
```

```
[a,b] = ['python','life']
```

```
a = b = 'life'
```
*temp 하기* 
```
>>> a = 3
>>> b = 5
>>> a,b =b,a
>>> a
5
>>> b
3
```
