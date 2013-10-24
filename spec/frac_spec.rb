require "lib/frac_main.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(1,1)
  end
  describe "Racional" do
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
    it "Se debe invocar al metodo num() para obtener el numerador" do
      @f1.num().should eq(1)
    end
     it "Se debe invocar al metodo num() para obtener el denominador" do
      @f1.denom().should eq(1)
    end
    it "Se debe mostar por la consola la fraccion de la forma: a/b" do
     @f1.to_s.should eq ("1/1")
    end
    it "Se debe mostrar por la consola la fraccion en formato flotante" do 
      @f1.to_float.should eq (1)
    end
    it "Se debe poder comprobar si dos fracciones son iguales con == " do
      A = Fraccion.new(4,4)
      (A == @f1).should be_true
    end
  end
end