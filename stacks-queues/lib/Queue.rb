Queue.rb
class Queue
  def initialize
      @store = Array.new
  end

  def enqueue(element)
      @store << element
  end

  def dequeue
      @store.shift
    #   @store.delete(@store.first)
  end

  def front
      return @store[0]
  end

  def size
      return @store.length
  end

  def empty?
      return @store.length == 0
  end

  def to_s
      return @store.to_s
  end
end
