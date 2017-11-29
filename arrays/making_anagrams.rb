# Arrays: Making Anagrams
# https://www.hackerrank.com/challenges/ctci-making-anagrams/problem

# This algorithm is O(n)

a = gets.strip
b = gets.strip

A_WORD_INDEX = 0
B_WORD_INDEX = 1

def count_letter(hash, letter, word_index) # O(1)
  hash[letter] ||= [0, 0]
  hash[letter][word_index] = hash[letter][word_index] + 1
end

result = 0
hash = {}

len = a.length > b.length ? a.length : b.length
len.times do |i| # O(n) being "n" the number or letter of the biggest word
  count_letter(hash, a[i], A_WORD_INDEX) if i < a.length
  count_letter(hash, b[i], B_WORD_INDEX) if i < b.length
end

# O(n)
# exploring: It is O(m) being m the sum of the unique letters of both words.
# O(m) can be, in the worst case O(2n) being "n" the number or letter of the
# biggest word. So O(2n) can be considered O(n)
hash.each_value do |counts|
  result += (counts[0] - counts[1]).abs
end

puts result
