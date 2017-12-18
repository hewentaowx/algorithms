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
do ->
  for row in [1...10]
    for column in [1...row+1]
      str += column + '*' +row + '=' + row*column + " "
      if row is column
        str += '\n'
console.log str

# 3*3*3 矩阵
max = []
do ->
  for row in [1...4]
    max[row] = []
    for column in [1...4]
      max[row][column] = []
      for deep in [1...4]
        max[row][column][deep] = row + column + deep

###
concat          连接两个或更多数组并返回结果
every           对数组中每一项运行给定函数，如果该函数对每一项都返回true则返回true
filter          对数组中每一项运行给定函数，如果该函数会返回true的项组成的数组
forEach         对数组中每一项运行给定函数，没有返回值
join            对所有的数组元素连接成一个字符串
indexOf         返回第一个与给定参数相等的数组元素的索引，没有找到则返回 -1
lastIndexOf     返回数组中搜索到的与给定参数相等的元素的索引里最大的值
map             对数组中的每一项运行给定函数，返回每次函数调用的结果组成的数组
reverse         颠倒数组的元素的顺序，第一个元素变成最后一个，最后一个变成第一个元素
slice           传入索引值将数组里对应的索引范围内的元素作为新数组返回
some            对数组中的每一项运行给定函数
sort            按照字母顺序对数组排序，支持传入指定排序方法的函数作为参考
toString        将数组作为字符串返回
valueOf         和toString类似，将数组作为字符串返回
###

# 数组合并
zero = 0
positiveNumbers = [1, 2, 3]
negativeNumbers = [-3, -2, -1]
numbers = negativeNumbers.concat zero, positiveNumbers
console.log numbers