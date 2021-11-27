require_relative './stack'

# your code here
def balancing_parentheses(str)
  parentheses = Stack.new
  count = 0
  str.each_char do |c|
    if c == '('
      parentheses.push(c)
    else
      if parentheses.pop == nil
        count += 1
      end
    end
  end
  count + parentheses.size
end