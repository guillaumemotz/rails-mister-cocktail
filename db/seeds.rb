# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# puts 'Cleaning database...'
# Ingredient.destroy_all

# puts 'Creating Ingredient...'
# ingredients = Ingredient.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }, { name: 'Star Wars' }])

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "Light rum")
# Ingredient.create(name: "Gin")
# Ingredient.create(name: "Dark rum")
# Ingredient.create(name: "Scotch")
# Ingredient.create(name: "Brandy")
# Ingredient.create(name: "Amaretto")
# puts 'Finished!'
puts 'Cleaning database...'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

ingredients = [
  {name: "lemon"
  },
  {
  name: "ice"
  },
  {
  name: "mint leaves"
  },
  {
  name: "Light rum"
  },
  {
  name: "Gin"
  },
  {
  name: "Dark rum"
  },
  {
  name: "Scotch"
  },
  {
  name: "Brandy"
  },
  {
  name: "Bourbon"
  },
  {
  name: "Sugar"
  },
  {
  name: "Kahlua"
  },
  {
  name: "Lime"
  },
  {
  name: "Espresso"
  },
  {
  name: "Firewater"
  },
  {
  name: "Campari"
  }
]

puts 'Creating ingredients...'

ingredients = ingredients.each do |hash|
  a = Ingredient.create!(name: hash[:name])
  puts a.id
end
puts Ingredient.count


puts 'Creating coktails...'


cocktails = 20.times do |cocktail|
Cocktail.create(name: Faker::Beer.name)
end

puts Cocktail.count


description = [
  {
  name: "2 doses"
  },
  {
  name: "1 verre"
  },
  {
  name: "1 cuillère"
  },
  {
  name: "2 cuillère"
  },
  {
  name: "3 cuillère"
  },
  {
  name: "1 dose"
  },
  {
  name: "2cl"
  },
  {
  name: "1 cl"
  },
  {
  name: "2ml"
  },
  {
  name: "3ml"
  },
  {
  name: "4ml"
  },
  {
  name: "1 pincée"
  }
]

20.times do |dose|
Dose.create(description: description.sample[:name], cocktail_id: cocktails.sample, ingredient_id: ingredients.sample )
end


puts Dose.count


puts 'Finished!'

