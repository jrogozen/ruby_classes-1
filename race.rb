class RaceCar
	attr_accessor :name, :speed, :distance
	def initialize(name)
		@name = name
		@speed = 0
		@distance = 0
		puts "You have initialized a new Race Car, #{name}."
	end
end

class RaceTrack
	attr_accessor :name, :race_time
	def initialize(name)
		@name = name
		@race_cars = []
		@race_time = 0
		puts "You have initialized a new Race Track, #{name}."
	end
	def add_car(car)
		@race_cars << car
		puts "You have added #{car.name} to the race!"
	end
	def reset_race
		#reset everyone to zero
		@race_time = 0
		@race_cars.each do |car|
			car.speed = 0
			car.distance = 0
		end
	end
	def race(fast_forward = 1)
		reset_race
		if fast_forward <= 5
			fast_forward.times do
				@race_time += 1
				if @race_time > 1
					puts "The race has begun!"
					puts "AFTER #{@race_time} HOURS OF RACING:"
				else
					puts "AFTER #{@race_time} HOUR OF RACING:"
				end
				@race_cars.each do |car|
					car.speed = rand(60..80)
					if @race_time > 1
						car.speed += rand(0..20)
					end
					car.distance += car.speed
					puts "#{car.name} is going #{car.speed} MPH."
					puts "#{car.name} has traveled #{car.distance} miles."
				end
			end
		else
			puts "Races are only 5 hours, please retry."
		end
	end
	def add_hour(hour=1)
		if @race_time < 5 && @race_time + hour < 5
			hour.times do
				@race_time +=1 
				puts "AFTER #{@race_time} HOURS OF RACING:"
				@race_cars.each do |car|
					car.speed += rand(0..20)
					car.distance += car.speed
					puts "#{car.name} is going #{car.speed} MPH."
					puts "#{car.name} has traveled #{car.distance} miles."
				end
			end
		else
			puts "Sorry, races only last 5 hours. Please retry."
		end
	end
	def determine_winner
		cars_with_distance = {}
		@race_cars.each do |car|
			cars_with_distance[car.name] = car.distance
		end
		max_distance = 0
		winner = ""
		cars_with_distance.each do |car, distance|
			if distance > max_distance
				max_distance = distance
				winner = car
			end
		end
		p cars_with_distance
		puts "The winner #{winner} traveled #{max_distance} miles in #{@race_time} hours."
	end
end