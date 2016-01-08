# L6 - Distinct
# https://codility.com/demo/take-sample-test/distinct/

def solution(array)
  array.reduce({}) do |object, value|
    object[value] = true 
    object
  end.size
end
