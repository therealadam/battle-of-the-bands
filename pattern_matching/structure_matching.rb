require 'rubygems'
require 'amulti'

class Person; end

amulti(:authenticate, [Person]) { true }
amulti(:authenticate, [String, String]) do |user, pass| 
  user == 'bob' && pass == 'foo'
end
amulti(:authenticate, [String]) do |token| 
  token == '0xdeadbeef'
end

authenticate(Person.new) # => 
authenticate('bob', 'foo') # => 
