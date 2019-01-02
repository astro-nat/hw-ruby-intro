# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |a| sum=sum+a }
  return sum
end

def max_2_sum arr
  return 0 if arr.size == 0 
  return arr.at(0) if arr.size == 1
  return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i.match(s) != nil
end

def binary_multiple_of_4? s
  /^(0|(10|111*0)(10|111*0)*0)*$/.match(s) != nil if !s.empty?
end

# Part 3

class BookInStock 
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
        @isbn = isbn
        raise ArgumentError, "ISBN is empty string" unless !isbn.empty?
        @price = price
        raise ArgumentError, "Price should not be zero" unless price > 0
  end
  def price_as_string
    return "$" + sprintf('%.2f', price)
  end
end
