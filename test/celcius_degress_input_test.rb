require 'minitest/autorun'
require './lib/celcius_degrees_input'

class CelciusDegreesInputTest < MiniTest::Unit::TestCase
  def test_to_f_return_float_if_value_with_dot
    assert_equal CelciusDegreesInput.new('1.2').to_f, 1.2
  end

  def test_to_f_return_float_if_value_with_comma
    assert_equal CelciusDegreesInput.new('1,2').to_f, 1.2
  end
end
