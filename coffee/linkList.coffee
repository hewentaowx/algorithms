# 链表 动态的数据结构也就是可以从中任意添加或移除项，按需扩容
# 链表存储有序的元素集合 链表中的元素在内存中不是连续放置的
# eg:
linkegdList = ->
  Node = (element) ->
    @element = element
    @next = null

  length = 0
  head = null # 存储第一个节点的引用

  @append = (element) ->
    node = new Node element
    if head is null
      head = node
    else
      current = head
      while current.next
        current = current.next
      current.next = node
    length++

  @removeAt = (position) ->
    # 检查越界值
    if position > -1 and position < length
      current = head
      index = 0
      # 移除第一项
      if position is 0
        head = current.next
      else
        while index++ < position
          previous = current
          current = current.next
        # 将previous与current的下一项链接起来，跳过current 从而移除它
        previous.next = current.next
      length--
      return current.element
    else
      return null

  @insert = (position, element) ->
    # 检查越界值
    if position >= 0 and position <= length
      node = new Node element
      current = head
      index = 0
      if position is 0 # 在第一个位置添加
        node.next = current
        head = node
      else
        while index++ < position
          previous = current
          current = current.next
        node.next = current
        previous.next = node
      length++
      return true
    else
      return false

  @remove = (element) ->
    index = @indexOf element
    return @removeAt index

  @indexOf = (element) ->
    current = head
    index = 0
    while current
      if element is current.element
        return index
      index++
      current = current.next
    return -1

  @isEmpty = ->
    return length is 0

  @size = ->
    return length

  @getHead = ->
    return head

  @toString = ->
    current = head
    string = ''
    while current
      string += ',' + current.element
      current = current.next
    return string.slice 1

  @print = ->
    console.log length

  return
  

list = new linkegdList()
console.log list.append 15
console.log list.append 10
console.log list.removeAt 0
console.log list.insert 0, 17
