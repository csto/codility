# L9 - Max Profit
# https://codility.com/demo/take-sample-test/max_profit/

def solution(array)
    lowest = Float::INFINITY
    profit = 0
    
    array.each do |value|
        lowest = [lowest, value].min
        profit = [profit, value - lowest].max
    end
    
    profit
end
