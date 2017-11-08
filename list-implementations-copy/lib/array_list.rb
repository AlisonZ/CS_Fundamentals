# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    #pretending this is a native array that is a fixed size and indexing only
    @storage = [0,0,0,0,0,0,0,0,0,0]
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value
    @size +=1
  end

  # Deletes the _last_ value in the array
  def delete
    @size -=1
  end

  def include?(key)
    @size.times do |i|
        if @storage[i] == key
            return true
        end
        return false
    end
  end

  def size
    @size
  end   

  def max
    max = @storage[0]
    @size.times do |i|
        if @storage[i] > max
            @storage[i] = max
        end
    end
  end

  def to_s
    str = ""
    @size.times do |i|
        str +=@storage[i] + ", "
    end
    return "[ #{str[0..-3]}]"
  end
end
