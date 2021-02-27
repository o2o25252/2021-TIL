## TWo Sum


```
>>> nums = [1,3,4,5]
>>> target = 9

>>> for i in range(len(nums)):
	print(i)

0
1
2
3

>>> for i in range(len(nums)):
	for j in range(i+1, len(nums)):
		temp = nums[i] +nums[j]
		print(temp)

4
5
6
7
8
9

>>> for i in range(len(nums)):
	for j in range(i+1, len(nums)):
		temp = nums[i] +nums[j]
		print(i,j)

0 1
0 2
0 3
1 2
1 3
2 3
```
#### 1 답
```
class Solution:
    def twoSum(self, nums, target):
        for i in range(len(nums) - 1):
            for j in range(i + 1, len(nums)):
                temp = nums[i] + nums[j]
                if temp == target:
                    return [i, j]
```


```

def twoSum(self,nums,target) :
	for i in range(len(nums)):
		if i in vals:
			return [vals[nums(i)],i]
	vals[target-nums(i)] = i			
```
