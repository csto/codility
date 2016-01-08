# L2 - Missing Integer
# https://codility.com/c/run/trainingG69D7Z-4AK

def solution(array)
    max = array.max
    
    return 1 if max < 1
    
    hash = {}
    
    array.each do |value|
        hash[value] = true
    end
    
    1.upto(max + 1) do |value|
        return value unless hash[value]
    end
    
    return 1
end
