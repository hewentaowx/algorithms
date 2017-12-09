#             真值和假值
#  数值类型              转换成布尔值
#  undefined              false
#  null                   false
#  布尔值                  false为false true为true
#  数字                    +0、-0.NaN为false，其他为 true
#  字符串                  字符串为空(长度为0)则为false，其他为 true
#  对象                    true

# eg
test = (val) ->
  if val then console.log 'truely' else console.log 'falsy'

test true
test false
test new Boolean false

test ''
test 'Jack'
test new String ''

test 1
test -1
test {}
test NaN
test new Number NaN

obj = { name: 'JSON' }
test obj
test obj.name
test obj.age

