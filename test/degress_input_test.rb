require 'minitest/autorun'
require './lib/degrees_input'

class DegreesInputTest < MiniTest::Unit::TestCase
  def test_celsius
    assert_equal DegreesInput.new("1.2C\n").celsius?, true
  end

  def test_not_celsius
    assert_equal DegreesInput.new("1.2F\n").celsius?, false
  end

  def test_fahrenheit
    assert_equal DegreesInput.new("1.2F\n").fahrenheit?, true
  end

  def test_not_fahrenheit
    assert_equal DegreesInput.new("1.2C\n").fahrenheit?, false
  end

  def test_to_f_celcius
    assert_equal DegreesInput.new("2,1F\n").to_f, 2.1
  end

  def test_to_f_fahrenheit
    assert_equal DegreesInput.new("1.2F\n").to_f, 1.2
  end
end
