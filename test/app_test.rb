require 'minitest/autorun'
require './lib/app'

class AppTest < MiniTest::Unit::TestCase
  def test_correct_convert_one_celcius
    expected = <<~TEXT
      Input °C:
      1
      33.8 °F
    TEXT
    assert_equal expected, app_output(input: "1")
  end

  def test_correct_convert_zero_celcius
    expected = <<~TEXT
      Input °C:
      0
      32 °F
    TEXT
    assert_equal expected, app_output(input: "0")
  end

  private

  def app_output(input:)
    StringIO.new.tap do |output|
      app = App.new(console: Console.new(input: StringIO.new(input), output: output))
      app.run
    end.string
  end
end
