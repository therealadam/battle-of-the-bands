# ==========================
# = Thunks delay execution =
# ==========================

def slow_add(x, y)
  sleep 10
  x + y
end

Time.now # => Sun Jul 20 16:07:53 -0500 2008
slow_add(2, 2)
Time.now # => Sun Jul 20 16:08:03 -0500 2008
foo = lambda { slow_add(2, 2) }
Time.now # => Sun Jul 20 16:08:03 -0500 2008
foo.call
Time.now # => Sun Jul 20 16:08:13 -0500 2008
