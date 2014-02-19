require_relative 'test_helper'

class RatioTest < MiniTest::Unit::TestCase
  
  def test_ratio
    assert_kind_of Ratio, Ratio(1, 2)
    assert_equal 0.5, Ratio(1, 2)
    assert_equal 1,   Ratio(101, 101)
    assert_equal 0,   Ratio(0, 10)
    assert_raises(ZeroDivisionError) { Ratio(1, 0) }
    assert_equal 100, Ratio(100, 100).numerator
    assert_equal 100, Ratio(100, 100).denominator
  end

  def test_each_with_progress
    assert_equal [[1, Ratio(1, 10)],
                  [2, Ratio(2, 10)],
                  [3, Ratio(3, 10)],
                  [4, Ratio(4, 10)],
                  [5, Ratio(5, 10)],
                  [6, Ratio(6, 10)],
                  [7, Ratio(7, 10)],
                  [8, Ratio(8, 10)],
                  [9, Ratio(9, 10)],
                  [10, Ratio(10, 10)]], (1..10).each_with_progress.to_a
  end
  
end
