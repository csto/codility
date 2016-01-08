# L6 - Triangle
# https://codility.com/demo/take-sample-test/triangle/

def solution(array)
  array.sort!
  
  array.each_with_index do |value, index|
    next unless array[index + 2]
    
    p, q, r = array[index..(index + 2)]
    if p + q > r && q + r > p && r + p > q
      return 1
    end
  end
  
  return 0
end
