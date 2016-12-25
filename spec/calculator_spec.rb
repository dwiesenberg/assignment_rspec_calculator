
# Calculator ... RSPEC Tests

require 'calculator.rb'

describe 'Calculator' do

#  let(:calc){Calculator.new}
  describe '#output' do

    let(:calc_new){Calculator.new(true)}
    it 'when stringify input is true is passed to a new calculator, the outputs each of the above computational functions is turned into a string' do
      expect(calc_new.output(10)).to eq("10")
    end

    let(:calc_new){Calculator.new(false)}
    it 'does not output result into a string when stringify input is false' do
      expect(calc_new.output(10)).to eq(10)
    end

  end

end





    



