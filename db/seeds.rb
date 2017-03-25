# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CategoryBrand.delete_all
cb01 = CategoryBrand.create!(name:'Disel')
cb02 = CategoryBrand.create!(name:'Ralph Laurent')
cb03 = CategoryBrand.create!(name:'Espirit')
cb04 = CategoryBrand.create!(name:'Ted Baker')
cb05 = CategoryBrand.create!(name:'River Island')

CategoryColour.delete_all
cc01 = CategoryColour.create!(name:'red')
cc02 = CategoryColour.create!(name:'yellow')
cc03 = CategoryColour.create!(name:'green')
cc04 = CategoryColour.create!(name:'blue')
cc05 = CategoryColour.create!(name:'black')
cc06 = CategoryColour.create!(name:'white')
cc07 = CategoryColour.create!(name:'orange')

