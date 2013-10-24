require "lib/frac_main.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(1,1)
  end
  
  describe "# Existen Elementos correctos en la fraccion" do
    it "Existe un valor correcto para el numerador" do
      @f1.num.should be_true
    end
    it "Existe un valor correcto para el denominador" do
      @f1.num.should be_true
      @f1.denom.should_not eq(0)
    end
    it "Los valores estan en forma reducida" do
      @f1.denom.should eq(@f1.denom/gcd(@f1.denom,@f1.num)) 
      @f1.num.should eq(@f1.num/gcd(@f1.denom,@f1.num))
    end
  end
  describe "# Existen metodos de acceso para los elementos" do
    it "Se debe invocar al metodo num() para obtener el numerador" do
      @f1.num().should eq(1)
    end
  end
  
end