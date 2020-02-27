puts 'Input degrees ° (C, F or K at the end):'
input = gets
if input.match?(/\d*(.|,)?\d*\s*c\s*/i)
  celsius_degrees = input.gsub(',', '.').to_f

  fahrenheit_degrees = celsius_degrees * 1.8 + 32
  kelvin_degrees = celsius_degrees + 273.15

  puts "#{fahrenheit_degrees.to_i == fahrenheit_degrees ? fahrenheit_degrees.to_i : fahrenheit_degrees}°F"
  puts "#{kelvin_degrees.to_i == kelvin_degrees ? kelvin_degrees.to_i : kelvin_degrees}°K"

  require 'csv'
  CSV.open("log.csv", "ab", col_sep: ';') do |csv|
    csv << ["#{celsius_degrees}°C", "#{fahrenheit_degrees}°F", "#{kelvin_degrees}°K", Time.now]
  end
elsif input.match?(/\d*(.|,)?\d*\s*k\s*/i)
  kelvin_degrees = input.gsub(',', '.').to_f

  celsius_degrees = kelvin_degrees - 273.15
  fahrenheit_degrees = (kelvin_degrees - 273.15) * 9/5 + 32

  puts "#{celsius_degrees.to_i == celsius_degrees ? celsius_degrees.to_i : celsius_degrees}°C"
  puts "#{fahrenheit_degrees.to_i == fahrenheit_degrees ? fahrenheit_degrees.to_i : fahrenheit_degrees}°F"

  require 'csv'
  CSV.open("log.csv", "ab", col_sep: ';') do |csv|
    csv << ["#{kelvin_degrees}°K", "#{celsius_degrees}°C", "#{fahrenheit_degrees}°F", Time.now]
  end
else
  fahrenheit_degrees = input.gsub(',', '.').to_f

  celsius_degrees = (fahrenheit_degrees - 32) * 5/9
  kelvin_degrees = (fahrenheit_degrees - 32) * 5/9 + 273.15

  puts "#{celsius_degrees.to_i == celsius_degrees ? celsius_degrees.to_i : celsius_degrees}°C"
  puts "#{kelvin_degrees.to_i == kelvin_degrees ? kelvin_degrees.to_i : kelvin_degrees}°K"

  require 'csv'
  CSV.open("log.csv", "ab", col_sep: ';') do |csv|
    csv << ["#{fahrenheit_degrees}°F", "#{celsius_degrees}°C", "#{kelvin_degrees}°K", Time.now]
  end
end
