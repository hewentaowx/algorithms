# 数组是最简单的内存数据结构
# 用new不是最好的方式
daysOfWeek = new Array()
daysOfWeek = new Array 7
daysOfWeek = new Array 'Su', 'M', 'Tu', 'W', 'Th', 'F', 'Sa'

# 用中括号的形式比new好一些
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

# 删除数组随意位置元素 splice(start, num) start 开始的索引 num从索引开始删除多少位
numbers.splice 0,1
console.log numbers

# 加数组也可以用 splice(start,num,int,int1.int2) start开始的索引 因为不是删除元素所以为0 int,int1,in2为插入的数值
numbers.splice 0,0,1,2,3
console.log numbers

newNumbers = [0, 1, 2, 3, 4, 5, 6, 7]
console.log newNumbers
newNumbers.splice 0, 3
console.log newNumbers
newNumbers.splice 0, 0, 0, 1, 2
console.log newNumbers
newNumbers.splice 0, 3, 0, 1, 2
console.log newNumbers

# 二维数组(矩阵)和多维数组  行 row 列 Column
###
     [0]    [1]    [2]    [3]    [4]
[0]   0      1      2      3      4
[1]   5      6      7      8      9
###
temp = []
temp[0] = []
temp[0][0] = 0
temp[0][1] = 1 
temp[0][2] = 2
temp[0][3] = 3
temp[0][4] = 4 

temp[1] = []
temp[1][0] = 5
temp[1][1] = 6
temp[1][2] = 7
temp[1][3] = 8
temp[1][4] = 9

tempTest = (val) ->
  for row in val
    for column in row
      console.log column

tempTest temp

str = ''
jiujiu = ->
  for row in [1...10]
    for column in [1...row+1]
      str += column + '*' +row + '=' + row*column + " "
      if row is column
        str += '\n'

jiujiu()
console.log str
