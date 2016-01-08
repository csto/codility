# L7 - Brackets
# https://codility.com/demo/take-sample-test/brackets/

def solution(string)
    nests = []
    starts = ['(', '{', '[']
    ends = [')', '}', ']']
    
    string.split('').each do |char|
         if starts.include?(char)
            nests << char
         else
            index = ends.index(char)
            return 0 unless nests.pop == starts[index]
         end
    end
    
    return nests.size == 0 ? 1 : 0
end
