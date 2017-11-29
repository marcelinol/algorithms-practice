# Stacks: Balanced Brackets
# https://www.hackerrank.com/challenges/ctci-balanced-brackets/problem

OPEN = ['(', '[', '{'].freeze
PAIRS = {
  '(' => ')',
  '[' => ']',
  '{' => '}'
}.freeze

t = gets.strip.to_i
for a0 in (0..t - 1)
  expression = gets.strip
  stack = []
  result = 'YES'

  expression.split('').each do |char|
    if char == stack.last
      stack.pop
      next
    end

    if OPEN.include?(char)
      stack << PAIRS[char]
      next
    end

    result = 'NO'
    break
  end
  result = 'NO' unless stack.empty?
  puts result
end
