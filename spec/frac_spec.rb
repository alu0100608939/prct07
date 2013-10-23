require "lib/frac_main.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(1,1)
  end
  
  describe "# existe numerador" do
    it "Existe un valor correcto para el numerador" do
      @f1.num.should eq (1)
    end
  end
end