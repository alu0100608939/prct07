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
end


