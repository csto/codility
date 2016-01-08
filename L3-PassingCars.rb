# L3 - PassingCars
# https://codility.com/demo/take-sample-test/passing_cars/

def solution(array)
  east = 0
  passed = 0
  
  array.each do |value|
    if value == 0
      east += 1 
    else
      passed += east
      return -1 if passed > 1_000_000_000
    end
  end
  
  return passed;
end
