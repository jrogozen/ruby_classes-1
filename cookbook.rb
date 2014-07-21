class Cookbook
	attr_accessor :title, :recipes
	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(recipe)
		@recipes << recipe
		puts "Added a recipe to the collection: #{recipe.title}"
	end
	def recipe_titles
		@recipes.join(", ")
	end
	def recipe_ingredients
		@recipes.each do |recipe|
			puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}."
		end
	end
	def print_cookbook
		@recipes.each do |recipe|
			puts "Name: #{recipe.title}"
			puts "Ingredients: #{recipe.ingredients.join(", ")}"
			puts "Steps:"
			recipe.steps.each_with_index do |step, index|
				puts "#{index+1}. #{step}"
			end
		end
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps
	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
	def print_recipe
		puts "The recipe's name is #{@title}."
		puts "It's ingredients are #{@ingredients.join(", ")}."
		puts "The steps to make it are #{@steps.join(", ")}."
	end
	def add_step (new_step)
		@steps << new_step
	end
	def remove_step (step_string)
		@steps.delete_if {|step| step == step_string }
	end
end