require "lib/gcd.rb"
class Fraccion
  attr_reader :num, :denom
  def initialize(x,y)
    @num = x/gcd(x,y)
    @denom = y/gcd(x,y)
  end
  def to_s
    "#{@num}/#{@denom}"
  end
  def to_float
    @num/@denom
  end
  def == (other)
    if other.is_a? Numeric
      return @num/@denom == other
    end
    @num == other.num && @denom == other.denom
  end
  def abs
    @num.abs/@denom.abs
  end
  def reciprocal
    Fraccion.new(@denom,@num)
  end
    
end


