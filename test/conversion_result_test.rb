require 'minitest/autorun'
require './lib/degrees_input'
require './lib/conversion_result'

class ConversionResultTest < MiniTest::Unit::TestCase
  def test_to_s_celcius_input
    assert_equal ConversionResult.new(DegreesInput.new("1.2C\n")).to_s, "34.16 °F"
  end

  def test_to_s_fahrenheit_input
    assert_equal ConversionResult.new(DegreesInput.new("23F\n")).to_s, "-5 °C"
  end
end
