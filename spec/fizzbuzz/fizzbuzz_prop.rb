require 'minitest/spec'
require 'minitest/autorun'
require 'rantly/minitest_extensions'
require './lib/fizzbuzz'

describe 'Fizzbuzz' do

	it 'should fizzbuzz very hard' do
		property_of { integer }.
		check { |i| 
			if(i % 3 == 0 && i % 5 == 0)
				assert_equal Fizzbuzz.do(i), 'fizzbuzz' 	
			elsif(i % 3 == 0)
				assert_equal Fizzbuzz.do(i), 'fizz' 
			elsif (i % 5 == 0)
				assert_equal Fizzbuzz.do(i), 'buzz' 
			else
				assert_equal Fizzbuzz.do(i), i 
			end		
		}
	end

end
