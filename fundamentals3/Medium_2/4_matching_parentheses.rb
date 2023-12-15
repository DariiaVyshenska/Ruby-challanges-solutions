def balanced?(str)
  parenth = str.delete('^()')
  open_arr = []
  closed_arr = []
  parenth.chars do |ch|
    open_arr << ch if ch == '('
    closed_arr << ch if ch == ')'
    return false if open_arr.size < closed_arr.size
  end
  return false if open_arr.size != closed_arr.size

  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('((xxx))) ((yyy)') == false
