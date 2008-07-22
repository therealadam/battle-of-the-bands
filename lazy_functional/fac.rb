# ========================
# = Leveraging recursion =
# ========================

def fac_iter(n)
  value = n
  
  while n > 1
    n = n - 1
    value = value * n
  end
  
  return value
end

def fac_rec(n)
  if n == 0
    1
  else
    n * fac_rec(n - 1)
  end
end

fac_iter(5) # => 120
fac_rec(5) # => 120
