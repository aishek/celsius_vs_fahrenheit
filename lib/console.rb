require 'io/console'

class Console
  def initialize(input: $stdin, output: $stdout)
    @input = input
    @output = output
  end

  def puts(string)
    @output.puts(string)
  end

  def gets
    @input.gets.tap do |s|
      next if @input.respond_to?(:echo?) && @input.echo?
      puts s
    end
  end
end
