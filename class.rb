# class Pet
# 	def speak
# 		Kernel.puts("Woof Woof")
# 	end
# 	def eat(food)
# 		Kernel.puts("Eats #{food}")
# 	end
# 	def favorite_person(name)
# 		Kernel.puts("#{name} is the favorite person.")
# 	end
# end

# class Ball
# 	def sport(name)
# 		Kernel.puts("It's a #{name} ball.")
# 	end
# 	def size
# 		Kernel.puts("The ball is 3cm.")
# 	end
# end

# cntrl + / to mass comment

class Marker
	def set_color(my_color)
		@color = my_color
	end

	def write
		Kernel.puts("I am writing with a #{@color} marker!")
	end
end

class Pet
	def set_noise(noise)
		@noise = noise
	end

	def speak
		Kernel.puts("#{@noise}.")
	end
end

class Ball
	def set_status(status)
		@status = status
	end

	def show_status
		Kernel.puts("This ball is #{@status}.")
	end
end

5.send(:*, 5)
"omg".send("upcase")
['a', 'b', 'c'].send(:at, 1)
['a', 'b', 'c'].send(:insert, 2, 'o', 'h', 'n', 'o')
{}.send(:size)
{character: "Mario"}.send(:has_key?, :character)

6-32
{html: true, json: false}.keys
"MakerSquare" * 6
"MakerSquare".split('a')
['alpha', 'beta'][3]