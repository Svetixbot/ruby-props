require 'rantly/rspec_extensions'
require './lib/fizzbuzz'

describe Fizzbuzz do

	it 'do fizzbuzz very hard' do
		property_of { integer }.
		check { |i| 
			if(i % 3 == 0 && i % 5 == 0)
				expect(Fizzbuzz.do(i)).to eq('fizzbuzz')	
			elsif(i % 3 == 0)
				expect(Fizzbuzz.do(i)).to eq('fizz') 
			elsif (i % 5 == 0)
				expect(Fizzbuzz.do(i)).to eq('buzz') 
			else
				expect(Fizzbuzz.do(i)).to eq(i) 
			end		
		}
	end

end
