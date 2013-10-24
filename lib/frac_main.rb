require "gcd.rb"
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
   
   def + (other)
      #Se calculan los nuevos valores
      num = @num*other.denom + @denom*other.num
      denom = @denom*other.denom
   
      return Fraccion.new(num,denom)
   end
   
   def - (other = Fraccion.new(@num*2,@denom))
      #Se calculan los nuevos valores
      num = @num*other.denom - @denom*other.num
      denom = @denom*other.denom
   
      return Fraccion.new(num,denom)
   end
   
   def * (other)
      #Se calculan los nuevos valores
      num = @num*other.num
      denom = @denom*other.denom
    
      return Fraccion.new(num,denom)
   end
    
   def / (other) 
      num = @num*other.denom
      denom = @denom*other.num
      
      return Fraccion.new(num,denom)
   end
   
   def % (other) 
      num = @num*other.denom
      denom = @denom*other.num
      
      return Fraccion.new(num % denom,1)
   end
   
   def < (other) 
      return ((num/denom) < (other.num/other.denom))
   end
   
   def > (other) 
      return ((num/denom) > (other.num/other.denom))
   end
   
end


