require './lib/degrees'

class ConversionResult
  def initialize(degrees_input)
    @degrees_input = degrees_input
  end

  def to_s
    if @degrees_input.celsius?
      Degrees.new(@degrees_input.to_f * 1.8 + 32, unit: "°F").to_s
    elsif @degrees_input.fahrenheit?
      Degrees.new((@degrees_input.to_f - 32) * 5/9, unit: "°C").to_s
    end
  end
end
