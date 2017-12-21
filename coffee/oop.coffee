# javascript里的对象就是普通名值对的集合 创建一个普通对象有两种方式
# 一种为：
obj = new Object()
# 另一种为：
obj = {}
# 也可以这样创建一个完整的对象：
obj = 
  name:
    first: 'Cc'
    last: 'Gg'
  address: 'Ee'

# 在oop中，对象是类的实例，一个类定义了对象的特征，会创建很多类来表示算法和数据结构
# eg
Book = (title, pages, isbn) ->
  @title = title
  @pages = pages
  @isbn = isbn
  return

book = new Book 'title', 'page', 'isbn'
console.log book.title
book.title = 'new title'
console.log book.title

# 类可以包含函数可以声明和使用函数
Book.prototype.printTitle = ->
  console.log @title
book.printTitle()

# 也可以直接在类的定义里声明函数
Book = (title, pages, isbn) ->
  @title = title
  @pages = pages
  @isbn = isbn
  @printIsbn = ->
    console.log @isbn
  return

book = new Book 'title', 'page', 'isbn'
book.printIsbn()