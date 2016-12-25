let(:calculator){Calculator.new}
expect(calculator).to be_a(Calculator)

expect{calculator.stringify}.not_to raise_error


before do
  let(:calc) { Calculator.new }
  let(:calc_with_stringify) { Calculator.new(true) }
end

it ...
  expect{calc_with_stringify}.to eq(true)
end

expect(calc.stringify).to eq(false) # no arg


let(:calc_null) { Calculator.new }
let (:calc_null.stringify){} 


expect(calc_null.stringify).to eq(false) # no arg -- better as more specific


it 'overwrites ... memory '
mem = 8
calc.memory=
mem = 6
calc.memory=
expect (calc.memory).to eq(6)

