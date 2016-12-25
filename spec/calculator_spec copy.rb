
# Calculator ... RSPEC Tests

require 'calculator.rb'

# Sanity test

describe 'Calculator' do
  let(:calc){Calculator.new}

  describe '#initialize' do
    it 'should give you a Calculator' do
      expect(calc).to be_a(Calculator)
    end

    it 'should have a nil memory' do
      expect(calc.memory) .to eq(nil)
    end

    it 'accepts a stringify variable' do
      expect{calc.stringify}.not_to raise_error
    end

    let (:calc_with_stringify_true){Calculator.new(true)}
    it 'accepts a stringify variable with value true' do
      expect(calc_with_stringify_true.stringify).to eq(true)
    end

    let (:calc_with_stringify_false){Calculator.new(false)}
    it 'accepts a stringify variable with value false' do
      expect(calc_with_stringify_false.stringify).to eq(false)
    end

    it 'accepts absence of a stringify variable' do
      expect(calc.stringify).to eq(false)
    end

  end

  describe '#add' do

    it 'adds positive integers' do
      expect(calc.add(1,2)).to eq(3)
    end

    it 'adds negative integers' do
      expect(calc.add(-1,-2)).to eq(-3)
    end

    it 'adds mixed positive and negative integers' do
      expect(calc.add(-1,+2)).to eq(+1)
    end

    it 'adds floating point numbers' do
      expect(calc.add(1.25, -2.5)).to eq(-1.25)
    end

    it 'adds mixed integer and floating point numbers' do
      expect(calc.add(-1, 2.5)).to eq(1.5)
    end

  end

  describe '#subtract' do

    it 'subtracts positive integers' do
      expect(calc.subtract(1,2)).to eq(-1)
    end

    it 'subtracts negative integers' do
      expect(calc.subtract(-1,-2)).to eq(1)
    end

    it 'subtracts mixed positive and negative integers' do
      expect(calc.subtract(-1,+2)).to eq(-3)
    end

    it 'subtracts floating point numbers' do
      expect(calc.subtract(1.25, -2.5)).to eq(3.75)
    end

    it 'subtracts mixed integer and floating point numbers' do
      expect(calc.subtract(-1, 2.5)).to eq(-3.5)
    end

  end
  
  describe '#multiply' do

    it 'multiplies positive integers' do
      expect(calc.multiply(1,2)).to eq(2)
    end

    it 'multiplies negative integers' do
      expect(calc.multiply(-1,-2)).to eq(2)
    end

    it 'multiplies mixed positive and negative integers' do
      expect(calc.multiply(-1,+2)).to eq(-2)
    end

    it 'multiplies floating point numbers' do
      expect(calc.multiply(1.25, -2.5)).to eq(-3.125)
    end

    it 'multiplies mixed integer and floating point numbers' do
      expect(calc.multiply(-1, 2.5)).to eq(-2.5)
    end

  end

  describe '#divide' do

    it 'properly divides numbers' do
      expect(calc.divide(4,2)).to eq(2)
    end

    it 'divides negative integers' do
      expect(calc.divide(-4,-2)).to eq(2)
    end

    it 'returns an integer if there is no remainder' do
      expect(calc.divide(4,2)).to eq(2)
    end

    it 'returns a floating number if there is a remainder' do
      expect(calc.divide(0.1,3.0)).to be_within(0.01).of(0.03)
    end

    it 'raises an ArgumentError if second argument is zero' do
      expect(calc.divide(4,0)).to raise_error(ArgumentError)
    end

  end

  describe '#pow' do

    it 'properly raises numbers to their power' do
      expect(calc.pow(2,4)).to eq(16)
    end

    it 'properly raises numbers to a negative power' do
      expect(calc.pow(2,-3)).to eq(0.125)
    end

    it 'properly raises numbers to a decimal power' do
      expect(calc.pow(2,2.5)).to be_within(0.01).of(5.66)
    end

  end

  describe '#sqrt' do

    it 'finds the square roots for positive numbers' do
      expect(calc.sqrt(9)).to eq(3)
    end

    it 'raises errors for negative numbers' do
      expect(calc.sqrt(-3)).to raise_error
    end

    it 'returns integers for round roots' do
      expect(calc.sqrt(4)).to eq(2)
    end

    it 'returns 2-digit decimals for non-round roots' do
      expect(calc.sqrt(3)).to eq(1.73)
    end

  end

  describe '#memory=' do

    it 'stores an object in memory' do
      expect(calc.memory=(8)).to eq(8)
    end

    it 'overwrites any previous object in memory' do
      expect(calc.memory=(6)).to eq(6)
    end

  end

  describe '#memory' do

    it 'returns the object in memory' do
      calc.memory=(6)
      expect(calc.memory).to eq(6)
    end

    it 'clears memory when returned' do
      expect(@memory).to eq(nil)
    end

    it 'starts as nil' do
      expect(calc.memory).to eq(nil)
    end

  end



end




    



