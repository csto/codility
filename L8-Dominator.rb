# TODO: Not 100%!!!

# L8 - Dominator
# https://codility.com/demo/take-sample-test/dominator/

def solution(array)
    return -1 unless array.size > 0
    
    list = Hash.new(0)
    
    array.each do |value|
       list[value] += 1 
    end
    
    leader, count = list.max_by { |key, value| value }
    
    count > array.size / 2 ? array.index(leader) : -1
end