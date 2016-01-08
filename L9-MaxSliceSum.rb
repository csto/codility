# L9 - Max Slice Sum
# https://codility.com/demo/take-sample-test/max_slice_sum/

def solution(array)
    max = -Float::INFINITY
    current_max = 0
    max_slice = 0
    
    array.each do |value|
        max = value if value > max
        
        if current_max + value > 0
            current_max += value
        else
           current_max = 0 
        end

        max_slice = current_max if current_max > max_slice
    end
    
    max_slice
end
