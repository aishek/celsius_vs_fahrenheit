require './lib/console'
require './lib/degrees_input'
require './lib/conversion_result'

class App
  def initialize(console: Console.new)
    @console = console
  end

  def run
    @console.puts "Input °C or °F:"

    degrees_input = DegreesInput.new(@console.gets)
    result = ConversionResult.new(degrees_input)

    @console.puts result
  end
end
