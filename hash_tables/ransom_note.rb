# Hash Tables: Ransom Note
# https://www.hackerrank.com/challenges/ctci-ransom-note/problem


m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

def ransom_note(m, n, magazine, ransom)
  return 'No' if n > m

  magazine_words = {}
  magazine.each do |word|
    magazine_words[word] ||= 0
    magazine_words[word] = magazine_words[word] + 1
  end

  ransom.each do |word|
    magazine_word_count = magazine_words[word]
    return 'No' unless magazine_word_count
    return 'No' if magazine_word_count < 1

    magazine_words[word] = magazine_word_count - 1
  end

  return 'Yes'
end


puts ransom_note(m, n, magazine, ransom)

# puts ransom_note(6, 5, 'two times three is not four'.split(' '), 'two times two is four'.split(' '))
