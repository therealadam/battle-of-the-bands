def adder(x, y)
  x + y
end

incr = lambda { |x| adder(x, 1) }

incr[1] # => 2

# Need a practical example of currying