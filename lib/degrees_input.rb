class DegreesInput
  def initialize(value)
    @value = value
  end

  def celsius?
    @value.end_with?("C\n")
  end

  def fahrenheit?
    @value.end_with?("F\n")
  end

  def to_f
    number = @value.gsub(/(C|F)\n$/, '').gsub(',', '.')
    number.to_f
  end
end
