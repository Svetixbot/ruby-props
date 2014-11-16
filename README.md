#Property based testing with ruby and rantly

## Run examples: 

	bundle install
	bundle exec rake

## Property based testing

* Came from the world of Haskell with QuickCheck
* You create assamptions(properties) of the input to hold the truthy statements
* You let the tool generate the input for the method you test
* You find out some input values which falsify your statement (values which will fail your test)
* Has nothing to do with Monads or FP
* Ok, it has something to do with FP: to be able to build those assomtions on the input your method has to produce the same output for the same input (all the pure methods satisfy this requirement, that is why FP)


## Runtly for Ruby

You can find those tools for pretty much any language. This example covers Ruby. And I think Runtly is kinda nice and fit the goal.

## Stuff you gonna love

* Generates really random input which lets you find all the possible values which will fail your assertions.
* Define custom generators: integer value from -100 to +100, any date between 1st of March and 1st of May 2001, one of Value or Null etc.

## Stuff you will be confused about
* Your test is going to have if-else statements to check the input.
* You don't document the edge cases

## TDD and incremental approach?

* You will lose the Red-Green-Refactor stages as they are now.
* Instead you will have Red-Red-Red-Red-....-Green-Refactor stages. You still can be incremental about implementing your solution though. Each Red stage will give you different input.

# How does it loook like?

## Fizzbuzz problem:

	specs-style tests at ./spec/rspec/fizzbuzz_spec.rb
	property-based tests are at ./spec/rantly/fizzbuzz_spec.rb

# Some real stuff when property-based testing actually shines
	
## Array#reverse and Array#concat
	./spec/rantly/array/array_prop.rb

## Parser
## Validator


