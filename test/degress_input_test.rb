require 'minitest/autorun'
require './lib/degrees_input'

class DegreesInputTest < MiniTest::Unit::TestCase
  def test_celsius
    assert_equal DegreesInput.new("1.2C\n").celsius?, true
  end

  def test_celsius_lowercase
    assert_equal DegreesInput.new("2c\n").celsius?, true
  end

  def test_celsius_lowercase_spaces
    assert_equal DegreesInput.new("2  c  \n").celsius?, true
  end

  def test_not_celsius
    assert_equal DegreesInput.new("1.2F\n").celsius?, false
  end

  def test_fahrenheit
    assert_equal DegreesInput.new("1.2F\n").fahrenheit?, true
  end

  def test_fahrenheit_lowercase
    assert_equal DegreesInput.new("2f\n").fahrenheit?, true
  end

  def test_fahrenheit_lowercase_spaces
    assert_equal DegreesInput.new("2 f  \n").fahrenheit?, true
  end

  def test_not_fahrenheit
    assert_equal DegreesInput.new("1.2C\n").fahrenheit?, false
  end

  def test_to_f_celcius
    assert_equal DegreesInput.new("2,1F\n").to_f, 2.1
  end

  def test_to_f_celcius_spaces
    assert_equal DegreesInput.new("2,12  F  \n").to_f, 2.12
  end

  def test_to_f_celcius_spaces_lowercase
    assert_equal DegreesInput.new("313  f    \n").to_f, 313
  end

  def test_to_f_fahrenheit
    assert_equal DegreesInput.new("1.2F\n").to_f, 1.2
  end

  def test_to_f_fahrenheit_spaces
    assert_equal DegreesInput.new("4   F  \n").to_f, 4
  end

  def test_to_f_fahrenheit_spaces_lowercase
    assert_equal DegreesInput.new("41   f  \n").to_f, 41
  end
end
