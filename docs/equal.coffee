#        相等操作符  == 
#  类型         类型         结果
#  null      undefined      true
#  undefined   null         true
#  数字         字符串        x == toNumber(y)
#  字符串       数字          toNumber(x) == y
#  布尔值       任何类型       toNumber(x) == y
#  任何类型     布尔值         x == toNumber(y)
#  字符串或数字  对象          x == toPrimitive(y)
#  对象         字符串或数字   toPrimitive(x) == y

#  如果x和y是相同类型则比较他们的值或对象值 除了以上都返回false

#  toNumber方法对不同类型的结果如下：
#  值类型             结果
#  undefined         NaN
#  null              0
#  布尔值             如果为true返回 1  false返回 0
#  数字              返回相应的数字
#  字符串             将字符串转换为数字如果含有字母则返回 NaN 全是数字字符则返回 数字
#  对象              Number(toPrimitive(val))

#  toPrimitive方法对不同类型返回的结果如下:
#  值类型             结果
#  对象               如果对象valueOf 方法结果是原始值则返回 原始值，如果对象的 toString方法返回原始值则返回这个值，其他情况返回错误

# eg
console.log if 'pick' then true else false

console.log 'pick' is true # false 'pick' == 1 NaN == 1 false

console.log 'pick' is false # false 同上

#        全等操作符 ===
#  类型         值                   结果
#  数字       x和y数值一样(不是NaN)    true
#  字符串     x和y是相同字符           true
#  布尔值     x和y都是false或 true    true
#  对象       x和y都引用同一个对象     true

#  如果 x 和 y 类型不一致则返回 false

# eg
console.log 'pick' is true

console.log 'pick' is 'pick'

person1 = { name: 'json'}
person2 = { name: 'jack'}
console.log person1 is person2

#  在coffeescript 里面没有js的 == 全改为 === 比较 即为 is