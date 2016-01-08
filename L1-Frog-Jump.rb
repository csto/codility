# L1 - Frog Jump
# https://codility.com/c/run/trainingP4G6W4-JFF

def solution(start, finish, distance)
    total = finish - start
    
    times = total / distance
    times += 1 if (total % distance > 0)
    times
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_standard
    assert_equal(3, solution(10, 85, 30))
  end
  
  def test_huge_total
    assert_equal(84, solution(10, 850, 10))
  end
end
