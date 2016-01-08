# L2 - PermCheck
# https://codility.com/c/run/training5YX2AK-YKM

def solution(array)
  hash = {}
    
  array.each do |value|
    hash[value] = true 
  end

  1.upto(array.size) do |index|
    return 0 if hash[index].nil? 
  end

  return 1
end
