def rpn(expr)
  result = expr.split.inject([]) do |state, term|
    case term
    when /\d/
      state << Float(term)
    when '+'
      state = [state.shift + state.shift]
    when '-'
      state = [state.shift - state.shift]
    when '*'
      state = [state.shift * state.shift]
    when '/'
      state = [state.shift / state.shift]
    end
    
    state
  end
  
  result.first
end

rpn("2 2 + 4 * 1 + 2 - 1 +") # => 16.0
