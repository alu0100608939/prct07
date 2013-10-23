require "lib/frac_main.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(1,1)
  end
  
  describe "# existe numerador" do
    it "Existe un valor correcto para el numerador" do
      @f1.num.should eq (1)
    end
    it "Existe un valor correcto para el denominador" do
      @f1.denom.should_not eq(0)
    end
  end
end