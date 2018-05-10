# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




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
Ingredient.destroy_all
puts 'Creating ingredients...'
ingredients = [
  {
  name: "lemon"
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
Ingredient.create!(ingredients)
puts 'Finished!'
