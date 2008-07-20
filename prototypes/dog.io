Dachshund := Object clone
Dachshund name := ""
Dachshund color := ""
Dachshund weight := 0
Dachshund arf := method(
  "Arf!" println
)
Dachshund description := method(
  name .. " is a " .. color .. " who weighs " .. weight .. " pounds."
)

napoleon := Dachshund clone
napoleon name = "Napoleon"
napoleon color  = "Black and tan"
napoleon weight = 12
napoleon arf
napoleon arf := method(
  "I am the manipulator" println
)
napoleon arf
napoleon description println

thor := Dachshund clone
thor name = "Thor"
thor color = "Black and tan"
thor weight = 18
thor arf := method(
  "Will perform for food" println
)
thor arf
thor description println


fred := Dachshund clone
fred name = "Fred"
fred color = "Red dapple"
fred weight = 13
fred arf := method(
  "I'm a problem solver" println
)
fred arf
fred description println
