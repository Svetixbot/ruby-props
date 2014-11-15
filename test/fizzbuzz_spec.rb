require 'minitest/spec'
require 'minitest/autorun'
require 'rantly/minitest_extensions'
require './lib/fizzbuzz'

describe 'Fizzbuzz' do

	it 'should fizzbuzz very hard' do
		property_of { integer }.
		check { |i| 
			if(i % 3 == 0 && i % 5 == 0)
				assert Fizzbuzz.do(i).must_equal 'fizzbuzz' 	
			elsif(i % 3 == 0)
				assert Fizzbuzz.do(i).must_equal 'fizz' 
			elsif (i % 5 == 0)
				assert Fizzbuzz.do(i).must_equal 'buzz' 
			else
				assert Fizzbuzz.do(i).must_equal i 
			end	
		}
	end

end
