

class Calculator

  attr_reader :stringify

  def initialize(stringify = false)
    @stringify = stringify
  end 

  def output(result)
    @stringify ? result.to_s : result
  end

end


calc_new = Calculator.new(false)

p calc_new.output(10)
