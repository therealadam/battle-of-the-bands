# ========================================
# = Sort of demonstrates lazy evaluation =
# ========================================

myif = lambda { |cond, if0, else0| cond ? if0 : else0 }

awesome = myif[1 == 1, "ruby is awesome", "ruby is lame"] # => 

trickierif = lambda do |cond, if0, else0|
  raise ArgumentError.new("Expected Proc for condition") unless cond.is_a?(Proc)
  raise ArgumentError.new("Expected Proc for if0 clause") unless if0.is_a?(Proc)
  raise ArgumentError.new("Expected Proc for else0 clause") unless else0.is_a?(Proc)
  cond[] ? if0[] : else0[]
end

awesomer = trickierif[lambda { "ruby is awesome" == "ruby is awesome" }, 
                        lambda { "Ruby rules" },
                        lambda { "Ruby is lame-esque" }]
puts awesomer
