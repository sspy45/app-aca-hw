# Exercise 1 - Stack

class Stack
  def initialize
    @stack = []

  end

  def add(el)
    # adds an element to the stack
    @stack << el
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    @stack.dup
  end
end

#Exercise 2 - Queue

class Queue
  def initialize
    @queue = []

  end

  def enqueue(el)
    # adds an element to the queue
    @queue << el
  end

  def dequeue
    # removes one element from the queue
    @queue.shift
  end

  def show
    @queue.dup
  end

end

#Exercise 3 - Map

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    idx = @map.index { |sub_arr| sub_arr[0] == key }
    idx ? @map[idx][1] = value : @map << [key, value]
    [key, value]
  end

  def lookup(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    @map.reject! { |el| el.first == key }
    nil
  end

  def show
    deep_dup(@map)
  end

  private

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
