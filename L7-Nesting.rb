# L7 - Nesting
# https://codility.com/demo/take-sample-test/nesting/

def solution(string)
    total = 0
    string.split('').each do |char|
        return 0 if total < 0
        
        if char == '('
            total += 1
        else
            total -= 1
        end
    end
    
    return total == 0 ? 1 : 0
end
