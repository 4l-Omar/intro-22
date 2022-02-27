# frozen_string_literal: true

require 'calculator'

describe Calculator do
  subject(:calc) { described_class.new }
  context 'somar' do
    it 'com números positivos' do
      result = calc.somar(3, 2)
      expect(result).to eq(5)
    end
    it 'com números positivos e negativos' do
      result = calc.somar(-5, 7)
      expect(result).to eq(2)
    end
    it 'com números negativos' do
      result = calc.somar(-5, -7)
      expect(result).to eq(-12)
    end
    it 'com números reais' do
      result = calc.somar(1.2, 1)
      expect(result).to eq(2.2)
    end
  end
  context 'subtrair' do
    it 'com números positivos' do
      result = calc.subtrair(3, 2)
      expect(result).to eq(1)
    end
    it 'com números positivos e negativos' do
      result = calc.subtrair(-5, 7)
      expect(result).to eq(-12)
    end
    it 'com números negativos' do
      result = calc.subtrair(-5, -7)
      expect(result).to eq(2)
    end
    it 'com números reais' do
      result = calc.subtrair(1, 1)
      expect(result).to eq(0)
    end
  end
  context 'multiplicar' do
    it 'com números positivos' do
      result = calc.multiplicar(4, 2)
      expect(result).to eq(8)
    end
    it 'com números positivos e negativos' do
      result = calc.multiplicar(-10, 2)
      expect(result).to eq(-20)
    end
    it 'com números negativos' do
      result = calc.multiplicar(-10, -2)
      expect(result).to eq(20)
    end
    it 'com números reais' do
      result = calc.multiplicar(1, 1)
      expect(result).to eq(1)
    end
  end
  context 'dividir' do
    it 'com números positivos' do
      result = calc.dividir(4, 2)
      expect(result).to eq(2)
    end
    it 'com números positivos e negativos' do
      result = calc.dividir(-10, 2)
      expect(result).to eq(-5)
    end
    it 'com números negativos' do
      result = calc.dividir(-10, -2)
      expect(result).to eq(5)
    end
    it 'com números reais' do
      result = calc.dividir(1, 1)
      expect(result).to eq(1)
    end
  end
  context 'modulo' do
    it 'com números positivos' do
      result = calc.modulo(5, 2)
      expect(result).to eq(1)
    end
    it 'com números positivos e negativos' do
      result = calc.modulo(-13, 2)
      expect(result).to eq(1)
    end
    it 'com números negativos' do
      result = calc.modulo(-11, -2)
      expect(result).to eq(-1)
    end
    it 'com números reais' do
      result = calc.modulo(1, 1)
      expect(result).to eq(0)
    end
  end
  context 'expoente' do
    it 'com números positivos' do
      result = calc.expoente(4, 2)
      expect(result).to eq(16)
    end
    it 'com números positivos e negativos' do
      result = calc.expoente(-10, 2)
      expect(result).to eq(100)
    end
    it 'com números negativos' do
      result = calc.expoente(-5, -2)
      expect(result).to eq(0.04)
    end
    it 'com números reais' do
      result = calc.expoente(1, 1)
      expect(result).to eq(1)
    end
  end
end
