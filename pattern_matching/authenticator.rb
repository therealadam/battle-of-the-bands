require 'rubygems'
require 'functor'

class Cookie
  def valid?
    true
  end
end

class Authenticator
  include Functor::Method
  
  functor(:authenticate, String, String) do |user, pass|
    user == 'adam' && pass == 'awesome'
  end
  functor(:authenticate, String) do |token|
     token == 'dallasrbisawesome'
  end
  functor(:authenticate, Cookie) do |cookie|
    cookie.valid?
  end
  
  # Nasty hack
  def self.authenticate(*args)
    new.authenticate(*args)
  end
  
end

Authenticator.authenticate('adam', 'awesome') # => true
Authenticator.authenticate('spalin@yahoo.com', 'hockey!') # => false

Authenticator.authenticate('dallasrbisawesome') # => true
Authenticator.authenticate('seattlerbisawesomer') # => false

Authenticator.authenticate(Cookie.new) # => true
