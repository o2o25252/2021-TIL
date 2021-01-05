# 알고리즘 

## 2021/01/02
---

[k번쨰수](https://programmers.co.kr/learn/courses/30/lessons/42748)

k번째수

배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다.

예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면

array의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다.
1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다.
2에서 나온 배열의 3번째 숫자는 5입니다.
배열 array, [i, j, k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때, commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.

1. 배열을 커맨드의 1 과 2 번째의 값만큼 slice 한다.
2. 배열을 올므찬순으로 정렬 한다 sort( (a,b) => a-b )
3. 커맨드의 3번째 값이 k 번째 의 수를 반환 해준다. 
```
function solution(array, commads){
    return commands.map( v => {


        array.slice(v[0]-1,v[1])
    첫번째 1 과 2 의 값 만큼 slice 한다.

    } )
}
```
```
    array.slice(v[0]-1,v[1]).sort( (a,b) => a-b )
    두번째 배열을 오름차순 으로 정렬한다.
```

```
    array.slice(v[0]-1,v[1]).sort( (a,b) => a-b ).slice(v[2]-1, v[2])[0]
    세번쨰 K번째 의 수를 반환 해준다. 
```

왜 ? -1 을 해주었는가? 커맨드는 항상 3개를 지닌 배열 이다 . 그러기에 딱 3번째를 반환 해주어야 한다.  slice 함수를 통해 마지막 만을 반환 하기 위함이다. slice( 3-1 , 3) 2번째 인덱스 와 3번째 자리 이런 식 이다. 

---

## 2021/01/03

0또 는 양의 정수가 주어졌을때, 정수를 이어 붙여 만들 수 있는 가장 큰수

[가장큰수](https://programmers.co.kr/learn/courses/30/lessons/42746?language=javascript)

문자열 로 바꾸어 반환

1. 1의 자리의 수를 먼저 모으고 비교
2. 2의 자리의 수를 비교

    배열 안의 원소들의 값의 길이를 비교 하여 볼려 했으나 Undefined 가 나온다 . 
    그래서 숫자 형을 문자형으로 바꾸어 찾는다.
```
    let c = n.map( v => String(v))
    길이를 비겨를 위해서 원소를 문자로 반꾼다.
```

``` 
   let o = c.filter( v => v.length <= 1 );
    1 의 자리의 수만 모았다
```

```
    o.sort( (a,b) => b-a);
    내림 차순 정렬
```
이런 순으로 1 , 2 의 찾고 한배열에 넣고 문자열로 반환 해준다. 

```
    function solution(numbers) {
    let n = numbers ;
    let c = n.map ( v => String(v));
    let o = c.filter(v=> v.length <=1);
    o.sort( (a,b) => b-a);
    
    let k = c.filter(v=> v.length > 1);
    k.sort( (a,b) => b-a);
    
    let a = o.concat(k).join("");    
    return a 
}

```
하지만 ... 1 차 시도 실패 첫번째 예시는 맞았지만 두번쨰 예시에 [3, 30, 34, 5, 9]	9534330 처럼 나오지 않는다. 
9533430 이렇게 나온다.
``` 
    function solution(numbers) {
    const arr = numbers
        .map( num => num.toString() )
        .sort( (a,b) => (b+a) - (a+b) );

    return arr[0] === '0' ? '0' : arr.join(''); 
}
```
```
    (b+a) - (a+b)
```
이 부분이 어떻게 해서 정렬 되는지 모르겠다 ... 
