# Arrays: Left Rotation
# https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def rotate_left(array_length, array, rotation_times)
  result = Array.new(array_length)
  i = rotation_times
  counter = 0

  array_length.times do # O(n)
    result[counter] = array[i] if i < array_length

    result[counter] = array[i - array_length] if i >= array_length

    i = i + 1
    counter = counter + 1
  end
  result
end


puts rotate_left(n, a, k).join(' ') # O(n)
