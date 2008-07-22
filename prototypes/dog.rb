require 'rubygems'
require 'metaid'

# =========================
# = Classical inheritance =
# =========================

class ClassicalDachshund
  attr_accessor :name, :color, :weight
  
  def initialize
    name = ''
    color = ''
    weight = 0
  end
  
  def arf
    "Arf!"
  end
  
  def description
    "#{name} is a #{color} dachshund who weighs #{weight} pounds"
  end
end

napoleon = ClassicalDachshund.new
napoleon.name = "Napoleon"
napoleon.color = "black and tan"
napoleon.weight = 12

puts napoleon.description
puts napoleon.arf

# ==========================
# = Prototypal inheritance =
# ==========================

# XXX: Is it possible to do prototypal things in Ruby without typing "class"

PrototypalDog = Object.clone
class <<PrototypalDog
  attr_accessor :name, :color, :weight
  
  define_method(:arf) do
    "Arf!"
  end
  
  define_method(:description) do
    "#{name} is a #{color} dachshund who weighs #{weight} pounds"
  end
end

napoleon = PrototypalDog.clone
napoleon.name = "Napoleon"
napoleon.color = "black and tan"
napoleon.weight = 12

puts napoleon.description
puts napoleon.arf

thor = PrototypalDog.clone
thor.name = "Thor"
thor.color = "black and tan"
thor.weight = 18
thor.metaclass.send(:define_method, :arf) do
  "Will perform for food"
end

puts thor.description
puts thor.arf
