require 'rantly/rspec_extensions'

describe Array do
	it 'reverses elements of the array' do
		property_of { 
			length = range(0, 500)
			array(length) { integer }}.
		check { |array| 
	    	array.should =~ array.reverse.reverse
		}
	end

	it 'concats two arrays into one' do
		property_of {
			length = range(0, 500)
			[array(length) {integer}, array(length) {integer}]
		}.
		check { |array1, array2|
			expect(array1.length + array2.length).to eq(array1.concat(array2).length)
		}
	end
end
