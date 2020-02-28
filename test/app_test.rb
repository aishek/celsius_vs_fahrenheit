require 'minitest/autorun'
require './lib/app'

class AppTest < MiniTest::Unit::TestCase
  def test_correct_convert_one_celcius
    expected = <<~TEXT
      Input °C or °F:
      1C
      33.8 °F
    TEXT
    assert_equal expected, app_output(input: "1C\n")
  end

  def test_correct_convert_zero_celcius
    expected = <<~TEXT
      Input °C or °F:
      0C
      32 °F
    TEXT
    assert_equal expected, app_output(input: "0C\n")
  end

  def test_correct_convert_zero_celcius_lowercase_spaces
    expected = <<~TEXT
      Input °C or °F:
      0   c
      32 °F
    TEXT
    assert_equal expected, app_output(input: "0   c\n")
  end

  def test_correct_convert_2_dot_3_celcius
    expected = <<~TEXT
      Input °C or °F:
      2.3C
      36.14 °F
    TEXT
    assert_equal expected, app_output(input: "2.3C\n")
  end

  def test_correct_convert_2_comma_3_celcius
    expected = <<~TEXT
      Input °C or °F:
      2,3C
      36.14 °F
    TEXT
    assert_equal expected, app_output(input: "2,3C\n")
  end

  def test_correct_convert_fahrenheit_to_celcius
    expected = <<~TEXT
      Input °C or °F:
      32F
      0 °C
    TEXT
    assert_equal expected, app_output(input: "32F\n")
  end

  def test_correct_convert_fahrenheit_to_celcius_spaces_lowercase
    expected = <<~TEXT
      Input °C or °F:
      32 f
      0 °C
    TEXT
    assert_equal expected, app_output(input: "32 f\n")
  end

  private

  def app_output(input:)
    StringIO.new.tap do |output|
      app = App.new(console: Console.new(input: StringIO.new(input), output: output))
      app.run
    end.string
  end
end
