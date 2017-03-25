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
cc01 = CategoryColour.create!(name:'Beige')
cc02 = CategoryColour.create!(name:'Blue')
cc03 = CategoryColour.create!(name:'Black')
cc04 = CategoryColour.create!(name:'Brown')
cc05 = CategoryColour.create!(name:'Copper')
cc06 = CategoryColour.create!(name:'Cream')
cc07 = CategoryColour.create!(name:'Gold')
cc08 = CategoryColour.create!(name:'Green')
cc09 = CategoryColour.create!(name:'Grey')
cc10 = CategoryColour.create!(name:'Navy')
cc11 = CategoryColour.create!(name:'Orange')
cc12 = CategoryColour.create!(name:'Pink')
cc13 = CategoryColour.create!(name:'Purple')
cc14 = CategoryColour.create!(name:'Red')
cc15 = CategoryColour.create!(name:'Silver')
cc16 = CategoryColour.create!(name:'Tan')
cc17 = CategoryColour.create!(name:'White')
cc18 = CategoryColour.create!(name:'Yellow')

CategoryShoesize.delete_all
cs01 = CategoryShoesize.create!(name:'UK 2')
cs02 = CategoryShoesize.create!(name:'UK 3')
cs03 = CategoryShoesize.create!(name:'UK 4')
cs04 = CategoryShoesize.create!(name:'UK 5')
cs05 = CategoryShoesize.create!(name:'UK 6')
cs06 = CategoryShoesize.create!(name:'UK 7')
cs07 = CategoryShoesize.create!(name:'UK 8')




