require './lib/console'
require './lib/degrees'
require './lib/celcius_degrees_input'

class App
  def initialize(console: Console.new)
    @console = console
  end

  def run
    @console.puts "Input °C:"

    celcius_degrees = CelciusDegreesInput.new(@console.gets).to_f
    fahrenheit_degrees = Degrees.new(celcius_degrees * 1.8 + 32, unit: "°F")

    @console.puts fahrenheit_degrees
  end
end
