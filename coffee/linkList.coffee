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
    node = new Node(element)
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

  return

  @insert = (position, element) ->
  @remove = (element) ->
  @indexOf = (element) ->
  @isEmpty = ->
  @size = ->
  @getHead = ->
  @toString = ->
  @print = ->

list = new linkegdList()
console.log list.append 15
console.log list.append 10
console.log list.removeAt 0
