require 'minitest/autorun'
require './lib/console'

class ConsoleTest < MiniTest::Unit::TestCase
  def test_puts_add_string_to_output
    output = StringIO.new
    console = Console.new(output: output)
    console.puts "hi"

    assert_equal output.string, "hi\n"
  end

  def test_gets_return_string_from_input
    input = StringIO.new("wow")
    input.instance_eval do
      def echo? # чтобы не выводить лишнего в тестах
        true
      end
    end
    console = Console.new(input: input)

    assert_equal console.gets, "wow"
  end
end
