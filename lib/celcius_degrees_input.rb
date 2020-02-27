class CelciusDegreesInput
  def initialize(value)
    @value = value
  end

  def to_f
    return @value.gsub(',', '.').to_f if @value.include?(',')
    @value.to_f
  end
end
