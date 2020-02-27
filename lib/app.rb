require './lib/console'

class App
  def initialize(console: Console.new)
    @console = console
  end

  def run
    @console.puts "Input °C:"

    celcius_degrees = @console.gets.to_i
    fahrenheit_degrees = celcius_degrees * 9/5 + 32

    @console.puts "#{fahrenheit_degrees} °F"
  end
end
