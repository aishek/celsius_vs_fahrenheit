class Degrees
  def initialize(value, unit:)
    @value = value
    @unit = unit
  end

  def to_s
    "#{@value == @value.to_i ? @value.to_i : @value} #{@unit}"
  end
end
