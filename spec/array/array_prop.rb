require 'minitest/spec'
require 'minitest/autorun'
require 'rantly/minitest_extensions'

describe 'Array' do
	it 'reverses elements of the array' do
		property_of { 
			length = range(0, 500)
			array(length) { integer }}.
		check { |array| 
	    	assert_equal array, array.reverse.reverse
		}
	end

	it 'concats two arrays into one' do
		property_of {
			length = range(0, 500)
			[array(length) {integer}, array(length) {integer}]
		}.
		check { |array1, array2|
			assert_equal (array1.length + array2.length), array1.concat(array2).length
		}
	end
end
