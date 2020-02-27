puts 'Input degrees °C:'
celsius_degrees = gets.to_i
fahrenheit_degrees = celsius_degrees * 1.8 + 32

puts "#{fahrenheit_degrees.to_i == fahrenheit_degrees ? fahrenheit_degrees.to_i : fahrenheit_degrees}°F"
