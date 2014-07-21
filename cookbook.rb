class Cookbook
	attr_accessor :title
	def initialize(title)
		@title = title
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps
	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end