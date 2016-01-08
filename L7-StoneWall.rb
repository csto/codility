# L7 - Stone Wall
# https://codility.com/demo/take-sample-test/stone_wall/

def solution(array)
    stack = []
    blocks = 0
    
    array.each do |height|
        while stack.any? && stack.last > height do
           stack.pop 
        end
        
        next if stack.last == height
        
        blocks += 1
        stack << height
    end
    
    blocks
end
