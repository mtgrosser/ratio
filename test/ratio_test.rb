require_relative 'test_helper'

class RatioTest < MiniTest::Unit::TestCase
  
  def test_instantiator
    assert_kind_of Ratio, Ratio(1, 2)
    assert_equal 0.5, Ratio(1, 2)
    assert_equal 1,   Ratio(101, 101)
    assert_equal 0,   Ratio(0, 10)
  end
  
  def test_zero_denominator_raises_zero_division_error
    assert_raises(ZeroDivisionError) { Ratio(1, 0) }
  end
  
  def test_numerator_and_denominator
    assert_equal 200, Ratio(200, 100).numerator
    assert_equal 100, Ratio(200, 100).denominator
  end
  
  def test_addition
    assert_equal Ratio(5, 4), Ratio(1, 2) + Ratio(3, 4)
  end
  
  def test_subtraction
    assert_equal Ratio(1, 6), Ratio(1, 2) - Ratio(1, 3)
  end
  
  def test_multiplication
    assert_equal Ratio(1, 4), Ratio(1, 2) * Ratio(1, 2)
  end
  
  def test_division
    assert_equal Ratio(1, 1), Ratio(1, 2) / Ratio(1, 2)
  end
  
  def test_exponentiation
    assert_equal Ratio(1, 8), Ratio(1, 2) ** 3
  end
  
end
