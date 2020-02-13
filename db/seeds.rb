# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
puts 'creating ingredients'

a = Ingredient.create(name: 'lemon')
b = Ingredient.create(name: 'ice')
c = Ingredient.create(name: 'mint leaves')

puts "#{Ingredient.all.count} ingredients created"

puts 'creating cocktails'

d = Cocktail.create(name: 'Walk of Shame')
e = Cocktail.create(name: 'Cuba Libre')
f = Cocktail.create(name: 'Mojito')

puts "#{Cocktail.all.count} cocktails created"

puts "creating doses"

x = Dose.new(description: '1 cube')
x.cocktail = e
x.ingredient = b
x.save
y = Dose.new(description: '1 slice')
y.cocktail = d
y.ingredient = a
y.save
z = Dose.new(description: '3 leaves')
z.cocktail = f
z.ingredient = c
z.save

puts "#{Dose.all.count} doses created"
