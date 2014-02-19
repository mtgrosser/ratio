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
  
end