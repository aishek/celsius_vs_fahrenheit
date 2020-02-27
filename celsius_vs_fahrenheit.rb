puts 'Input degrees ° (C or F at the end):'
input = gets
if input.end_with?("C\n")
  celsius_degrees = input.gsub(',', '.').to_f
  fahrenheit_degrees = celsius_degrees * 1.8 + 32

  puts "#{fahrenheit_degrees.to_i == fahrenheit_degrees ? fahrenheit_degrees.to_i : fahrenheit_degrees}°F"
else
  fahrenheit_degrees = input.gsub(',', '.').to_f
  celsius_degrees = (fahrenheit_degrees - 32) * 5/9

  puts "#{celsius_degrees.to_i == celsius_degrees ? celsius_degrees.to_i : celsius_degrees}°C"
end
