# 数组是最简单的内存数据结构
# 用new不是最好的方式
daysOfWeek = new Array()
daysOfWeek = new Array 7
daysOfWeek = new Array 'Su', 'M', 'Tu', 'W', 'Th', 'F', 'Sa'

# 用中括号的形式比new一些
daysOfWeek = []
daysOfWeek = ['Su', 'M', 'Tu', 'W', 'Th', 'F', 'Sa']
console.log daysOfWeek.length

# 遍历
for day in daysOfWeek
  console.log day

# 斐波那契数列 求斐波那契数列前 20 个数字
fibonacci = []
fibonacci[0] = 1
fibonacci[1] = 2
for num in [2...19]
  fibonacci[num] = fibonacci[num-1] + fibonacci[num-2]
console.log fibonacci

# 添加元素和删除元素
# eg push向数组尾部插入
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers[numbers.length] = 10
console.log numbers
numbers.push 11
numbers.push 12, 13
console.log numbers

# 将元素插入到数组第一位  unshift
# eg
for i in [14...0]
  numbers[i] = numbers[i-1]
numbers[0] = -1
console.log numbers

# eg or
numbers.unshift -2
numbers.unshift -4, -3
console.log numbers

# pop删除数组最靠后的元素
numbers.pop()
console.log numbers

# 删除数组第一个元素 shift  长度还是17并没有删除元素只是覆盖了
for i in [0...16]
  numbers[i] = numbers[i+1]
console.log numbers

numbers.shift()
console.log numbers