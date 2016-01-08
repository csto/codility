# L2 - MaxCounters
# https://codility.com/c/run/training5P9HTU-M22

def solution(n, array)
    result = Array.new(n, 0)
    max = 0
    
    array.each do |value|
        if value <= n
            result[value - 1] += 1
            max = [max, result[value - 1]].max
        end
        
        if value == n + 1
            result = Array.new(n, max)
        end
    end
    
    return result
end
