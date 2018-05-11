

require 'faker'
require 'open-uri'


puts 'Cleaning database...'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts '-----------------Creating Ingredients...-----------------'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients_list = JSON.parse(open(url).read)["drinks"]

ingredients_list.each do |ingredient_hash|
  Ingredient.create!(
    name: ingredient_hash["strIngredient1"]
  )
end

puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts 'Creating coktails & doses'

10.times do
  cocktail = Cocktail.create!(
    name: Faker::Pokemon.name
    )
  5.times do
    dose = Dose.create!(
      description: "5cl",
      cocktail: cocktail,
      ingredient: Ingredient.all.sample
      )
  end
end



puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
puts 'Creating Doses...'


puts 'Finished!'
