# When done, submit this entire file to the autograder.

# Part 1

require 'set'

def sum arr
  sum = 0
  arr.each do |item|
    sum = sum + item
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    top_2_elements = arr.max(2)
    return top_2_elements[0] + top_2_elements[1]
  end
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  else
    num_set = Set.new
    arr.each do |item|
      if num_set.include?(n-item)
        return true
      end
      num_set << item
    end
    return false
  end
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  if s[0] =~ /[[:alpha:]]/ 
    s = s.downcase
    if s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u'
      return false
    end
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  if s.length == 1
    if s[0] == '0'
      return true
    else
      return false
    end
  end
  if s.match(/^[0-1]*00$/)
    return true
  end
  return false
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    if isbn.length == 0 or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_reader :isbn
  attr_writer :isbn
  attr_reader :price
  attr_writer :price
  
  def price_as_string
    format("$%.2f", @price)
  end
end
