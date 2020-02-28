class DegreesInput
  def initialize(value)
    @value = value
  end

  def celsius?
    @value.match?(/\s*c\s*\n/i)
  end

  def fahrenheit?
    @value.match?(/\s*f\s*\n/i)
  end

  def to_f
    number = @value.gsub(/\s*(c|f)\s*\n$/i, '').gsub(',', '.')
    number.to_f
  end
end
