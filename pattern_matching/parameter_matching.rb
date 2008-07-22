require 'rubygems'
require 'multi'

# ==========================
# = Basic pattern matching =
# ==========================

multi(:fac, 0) { 1 }
multi(:fac, Integer) { |x| x * fac(x - 1) }

fac(5) # => 120

multi(:scales?, lambda { |x| x > 100_000 }) { true }
multi(:scales?, Object) { false }

scales?(100) # => false
scales?(100_000_000) # => true

# ================================================
# = Pattern matching methods as instance methods =
# ================================================

class Gizmo
  multi(:foo, Object) { puts "FOO!" }
  
  multi(:frob, true) { "Great!" }
  multi(:frob, 42) { "Deep" }
  multi(:frob, Class) { "Funky" }
end

g = Gizmo.new
g.frob(true) # => 
g.frob(42) # => 
g.frob(String) # => 
