# 栈是一种遵从 后进先出(LIFO)原则的有序集合，新添加的或待删除的元素都保存在栈的末尾，称为栈顶，另一端
# 称为栈底。在栈里，新元素都靠近栈顶，旧元素都靠近栈底。

# 栈的创建
Stack = ->
  # 定义一种数据结构保存栈里的元素 选择数组
  iterms = []
  # 定义push方法往栈添加新元素
  @.push = (element) ->
    iterms.push element
  # 使用pop方法 移除栈里的元素 遵从LIFO原则
  @.pop = ->
    return iterms.pop()
  # peek不会对栈做任何修改
  @.peek = ->
    return iterms[iterms.length-1]
  # 如果栈为空返回为 true 否则返回false
  @.isEmpty = ->
    return iterms.length == 0
  # size
  @.size = ->
    return iterms.length
  @.clear = ->
    iterms = []
  @.print = ->
    console.log iterms.toString()
  return

stack = new Stack()

console.log (stack.isEmpty())
stack.push 5
stack.push 8
console.log (stack.peek())
stack.push 11
console.log (stack.size())
console.log (stack.isEmpty())
stack.push 15
stack.pop()
stack.pop()
console.log (stack.size())
stack.print()

# 从十进制到二进制
# 通用转进制算法
baseConverter = (docNumber, base) ->
  stack = new Stack()
  baseString = ''
  digits = '0123456789ABCDEF'

  while docNumber > 0
    rem = Math.floor(docNumber % base)
    stack.push rem
    docNumber = Math.floor(docNumber / base)
  
  while not stack.isEmpty()
    baseString += digits[stack.pop()]

  return baseString

console.log baseConverter 100345, 2
console.log baseConverter 100345, 8
console.log baseConverter 100345, 16

  
  
  
