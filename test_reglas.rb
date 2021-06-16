require 'rspec'
require 'matrix'
require_relative 'reglas/Reglas'
x = 5;
y = 5;
c_n = Matrix.build(y,x){rand.to_i}

describe Reglas do
    reglas = Reglas.new(c_n,x,y)
    it 'return 1 when Numero==1 and no_Vecino < 2' do
        expect(reglas.reglas(1, 1)).to eq 0
    end
    it 'return 1 when Numero==1 and no_Vecino > 3' do
        expect(reglas.reglas(4, 1)).to eq 0
    end
    it 'return 1 when Numero==1 and no_Vecino == 2 and no_Vecino==3' do
        expect(reglas.reglas(2, 1)).to eq 1
    end
    it 'return 1 when Numero==0 and no_Vecino == 3' do
        expect(reglas.reglas(3, 0)).to eq 1
    end
    it 'return 0 when Numero==0 and no_Vecino != 3' do
        expect(reglas.reglas(5, 0)).to eq 0
    end
end