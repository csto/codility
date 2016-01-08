# Codility Lesson 1 - Time Complexity
# https://codility.com/c/run/trainingSVKRM6-NQX

def solution(array)
  max = array.length - 1
  left = 0
  right = array.inject(0, :+)
  min = nil
  
  max.times do |index|
    left += array[index]
    right -= array[index]
    difference = (left - right).abs
    min = difference if min == nil || difference < min
  end
  
  return min
end

require 'minitest/autorun'


