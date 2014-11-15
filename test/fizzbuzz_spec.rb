require 'minitest/spec'
require 'minitest/autorun'
require './lib/fizzbuzz'

describe 'Fizzbuzz' do

	it 'fizzbuzzing fizz when 3' do
		Fizzbuzz.do(3).must_equal 'fizz'	
	end
	it 'fizzbuzzing buzz when 5' do
		Fizzbuzz.do(5).must_equal 'buzz'
	end
	it 'fizzbuzzing fizzbuzz when 15' do
		Fizzbuzz.do(15).must_equal 'fizzbuzz'
	end
	it 'fizzbuzzing 2 when 2' do
		Fizzbuzz.do(2).must_equal 2
	end

end
