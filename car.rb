class Car
	def initialize
		@fuel = 10
		@distance = 0
		@price = 3.50
		puts "the initialize method is running automatically."
	end
	def get_info
		"I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end
	def drive(miles)
		# miles / 20 is how many gallons of gas we need
		if miles / 20.0 > @fuel
			puts "We do not have enough fuel."
		else
			# let's drive
			@distance = @distance + miles
			@fuel = (@fuel - (miles/20.0))
		end
	end
	def fuel_up
		@cost = 0
		while @fuel < 10
			@fuel += 1
			@cost += 1
		end
		@cost = @cost * @price
		puts "It cost $#{@cost} to fill up at $#{@price} per gallon."
	end
end