require_relative 'fizz_buzz'
require 'minitest/autorun'

class TestFizzBuzzBazz < Minitest::Test
  attr_reader :fb

  def setup
    @fb = FizzBuzzBazz.new
  end

  def test_when_number_is_multiple_of_3
    assert_equal('Fizz', fb.result(9))
  end

  def test_when_number_is_multiple_of_5
    assert_equal('Buzz', fb.result(10))
  end

  def test_when_number_is_multiple_of_3_and_5
    assert_equal('Bazz', fb.result(15))
  end

  def test_when_number_is_not_multiple_of_3_or_5
    assert_equal(8, fb.result(8))
  end
end
