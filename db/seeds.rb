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

CategoryClothesize.delete_all
ccs01 = CategoryClothesize.create!(name:'UK 2')
ccs02 = CategoryClothesize.create!(name:'UK 4')
ccs03 = CategoryClothesize.create!(name:'UK 6')
ccs04 = CategoryClothesize.create!(name:'UK 8')
ccs05 = CategoryClothesize.create!(name:'UK 10')
ccs06 = CategoryClothesize.create!(name:'UK 12')
ccs07 = CategoryClothesize.create!(name:'UK 14')
ccs08 = CategoryClothesize.create!(name:'UK 16')
ccs09 = CategoryClothesize.create!(name:'UK 18')
ccs10 = CategoryClothesize.create!(name:'UK 20')
ccs11 = CategoryClothesize.create!(name:'UK 22')
ccs12 = CategoryClothesize.create!(name:'UK 24')
ccs13 = CategoryClothesize.create!(name:'UK 26')
ccs14 = CategoryClothesize.create!(name:'UK 28')
ccs15 = CategoryClothesize.create!(name:'UK 30')

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
css01 = CategoryShoesize.create!(name:'UK 2')
css02 = CategoryShoesize.create!(name:'UK 3')
css03 = CategoryShoesize.create!(name:'UK 4')
css04 = CategoryShoesize.create!(name:'UK 5')
css05 = CategoryShoesize.create!(name:'UK 6')
css06 = CategoryShoesize.create!(name:'UK 7')
css07 = CategoryShoesize.create!(name:'UK 8')




