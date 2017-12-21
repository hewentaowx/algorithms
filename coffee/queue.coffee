# 队列 队列遵循FIFO 规则，先进先出 和栈相反

# eg:
Queue = ->
  items = []
  # 向队列尾部添加一个元素
  @enqueue = (element) ->
    items.push element
  # 先进先出 shift
  @dequeue = ->
    items.shift()
  # 知道第一个是什么
  @front = ->
    items[0]
  # 为空返回true
  @isEmpty = ->
    items.length == 0
  # 清空
  @clear = ->
    items = []
  # 数组长度
  @size = ->
    items.length
  # 打印
  @print = ->
    console.log items.toString()

  return

queue = new Queue()
console.log queue.isEmpty()

queue.enqueue 'John'
queue.enqueue 'Jack'
queue.enqueue 'Camila'

queue.print()
console.log queue.size()
console.log queue.isEmpty()
queue.dequeue()
queue.dequeue()
queue.print()

# 优先队列
PriorityQueue = ->
  items = []

  QueueElement = (element, priority) ->
    @element = element
    @priority = priority

  @isEmpty = ->
    items.length == 0

  @print = ->
    console.log items

  @enqueue = (element, priority) ->
    queueElement = new QueueElement(element, priority)
    if @isEmpty()
      items.push queueElement
    else
      added = false
      for i in [0...items.length]
        if queueElement.priority < items[i].priority
          items.splice i, 0, queueElement
          added = true
          break
      if not added
        items.push queueElement

  return

priorityQueue = new PriorityQueue()
priorityQueue.enqueue 'John', 7
priorityQueue.enqueue 'Jack', 2
priorityQueue.enqueue 'Mary', 5
priorityQueue.print()
