# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CategoryColour.delete_all
cc01 = CategoryColour.create!(name:'red')
cc02 = CategoryColour.create!(name:'yellow')
cc03 = CategoryColour.create!(name:'green')
cc04 = CategoryColour.create!(name:'blue')
cc05 = CategoryColour.create!(name:'black')
cc06 = CategoryColour.create!(name:'white')
cc07 = CategoryColour.create!(name:'orange')

CategoryBlog.delete_all
cb01 = CategoryBlog.create!(name:'News')
cb02 = CategoryBlog.create!(name:'Venues')
cb03 = CategoryBlog.create!(name:'Networking Tips')
cb04 = CategoryBlog.create!(name:'Dating Tips')