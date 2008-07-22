require 'rubygems'
require 'smulti'

keyword = 'fungdark'

smulti(:authenticate, 'fungdark') { true }
smulti(:authenticate, /./) do |_, rest| 
  authenticate(rest)
end
smulti(:authenticate, //) { false }

authenticate('You are a fungdark') # => true
authenticate('My voice is my password, verify me') # => false
