# L8 - Equi Leader
# https://codility.com/demo/take-sample-test/equi_leader/

def solution(array)
    equi_leaders = 0
    list = Hash.new { |hash, key| hash[key] = 0 }
    
    array.each do |value|
        list[value] += 1
    end
    
    left_leaders = 0
    leader, right_leaders = list.max_by { |key, value| value }
    
    array.each_with_index do |value, index|
        index = index + 1
        
        if value == leader
            left_leaders += 1
            right_leaders -= 1
        end
       
        if left_leaders > (index / 2) && right_leaders > ((array.size - index) / 2)
            equi_leaders += 1
        end
    end
    
    equi_leaders
end