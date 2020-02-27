require 'minitest/autorun'
require './lib/degrees'

class DegreesTest < MiniTest::Unit::TestCase
  def test_to_s_return_accurate_value_and_unit
    assert_equal Degrees.new(1.2, unit: "°F").to_s, "1.2 °F"
  end

  def test_to_s_return_rounded_value_and_unit
    assert_equal Degrees.new(5.0, unit: "°C").to_s, "5 °C"
  end
end
