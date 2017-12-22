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
  @insert = (position, element) ->
  @removeAt = (position) ->
  @remove = (element) ->
  @indexOf = (element) ->
  @isEmpty = ->
  @size = ->
  @getHead = ->
  @toString = ->
  @print = ->
