require './lib/fizzbuzz'

describe Fizzbuzz do

	it 'fizzbuzzing fizz when 3' do
		expect(Fizzbuzz.do(3)).to eq('fizz')
	end
	it 'fizzbuzzing buzz when 5' do
		expect(Fizzbuzz.do(5)).to eq('buzz')
	end
	it 'fizzbuzzing fizzbuzz when 15' do
		expect(Fizzbuzz.do(15)).to eq('fizzbuzz')
	end
	it 'fizzbuzzing 2 when 2' do
		expect(Fizzbuzz.do(2)).to eq(2)
	end

end