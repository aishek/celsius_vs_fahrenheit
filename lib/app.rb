require './lib/console'
require './lib/degrees'

class App
  def initialize(console: Console.new)
    @console = console
  end

  def run
    @console.puts "Input °C:"

    celcius_degrees = @console.gets.to_i
    fahrenheit_degrees = Degrees.new(celcius_degrees * 1.8 + 32, unit: "°F")

    @console.puts fahrenheit_degrees
  end
end
