require "./lib/frac_main.rb"

num1 = 1
denom1 = 2
num2 = -3
denom2 = 4
describe Fraccion do
   before :each do
      @f1 = Fraccion.new(num1,denom1)
      @f2 = Fraccion.new(num2,denom2)
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
         @f1.num().should eq(num1)
      end
      it "Se debe invocar al metodo num() para obtener el denominador" do
         @f1.denom().should eq(denom1)
      end
      it "Se debe mostar por la consola la fraccion de la forma: a/b" do
         @f1.to_s.should eq ("#{num1}/#{denom1}")
      end
      it "Se debe mostrar por la consola la fraccion en formato flotante" do 
         @f1.to_float.should eq (num1/denom1)
      end
      it "Se debe poder comprobar si dos fracciones son iguales con == " do
         A = Fraccion.new(2,4)
         (A == @f1).should be_true
      end
      it "Se debe calcualr el valor absoluto de una fraccion con el metodo abs" do
         @f1.abs.should eq (@f1.num.abs/@f1.denom.abs)
      end
      it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
         @f1.reciprocal.should eq (Fraccion.new(2,1))
      end
      it "Se debe calcular el opuesto de una fraccion con -" do
         @f1.-.should eq (Fraccion.new(-1,2))
      end
      it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
         (@f1 + @f2).should eq (Fraccion.new(-1,4))
      end
      it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
         (@f1 - @f2).should eq (Fraccion.new(5,4))
      end
      it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
         (@f1 * @f2).should eq (Fraccion.new(-3,8))
      end
      it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
         (@f1 / @f2).should eq (Fraccion.new(4,-6))
      end
      it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
         (@f1 % @f2).should eq (Fraccion.new(-2,1))
      end
      it "Se debe de poder comprobar si una fracion es menor que otra" do
         (@f2 < @f1).should eq (true)
      end
      it "Se debe de poder comprobar si una fracion es mayor que otra" do
         (@f2 > @f1).should eq (false)
      end
      it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
         (@f2 <= @f1).should eq (true)
      end
      it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
         (@f2 >= @f1).should eq (false)
      end
   end
end