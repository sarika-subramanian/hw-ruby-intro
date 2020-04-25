# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2) {|c| return true if c.sum == n}
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  Regexp.new('^[qwrtypsdfghjklzxcvbnm]',Regexp::IGNORECASE).match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[01]+$/.match?(s)
    s.to_i(2) % 4 == 0
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn
 attr_accessor :price

  def initialize isbn, price
    if price <= 0 or isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end