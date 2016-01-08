# L3 - CountDiv
# https://codility.com/demo/take-sample-test/count_div/

def solution(a, b, k)
  point = a / k
  location = point * k
  
  total = 0
  
  loop do
    
    total += 1 if location >= a && location <= b
    break if location > b
    point += 1
  end

  return total
end
