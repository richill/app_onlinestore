# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CategoryAccessorytype.delete_all 
cat01 = CategoryAccessorytype.create!(name:'Belts')
cat02 = CategoryAccessorytype.create!(name:'Bow Ties & Collars')
cat03 = CategoryAccessorytype.create!(name:'Bracelets')
cat04 = CategoryAccessorytype.create!(name:'Capes & Ponchos')
cat05 = CategoryAccessorytype.create!(name:'Earrings')
cat06 = CategoryAccessorytype.create!(name:'Glasses')
cat07 = CategoryAccessorytype.create!(name:'Gloves')
cat08 = CategoryAccessorytype.create!(name:'Hair Accessories')
cat09 = CategoryAccessorytype.create!(name:'Hats')
cat10 = CategoryAccessorytype.create!(name:'Key Rings')
cat11 = CategoryAccessorytype.create!(name:'Necklaces')
cat12 = CategoryAccessorytype.create!(name:'Rings')
cat13 = CategoryAccessorytype.create!(name:'Scarves & Snoods')
cat14 = CategoryAccessorytype.create!(name:'Umbrellas')

CategoryBagtype.delete_all
cbt01 = CategoryBagtype.create!(name:'Across Body Bags')
cbt02 = CategoryBagtype.create!(name:'Bum Bags')
cbt03 = CategoryBagtype.create!(name:'Backpacks')
cbt04 = CategoryBagtype.create!(name:'Clutches')
cbt05 = CategoryBagtype.create!(name:'Coin Purses')
cbt06 = CategoryBagtype.create!(name:'Folder Over Purses')
cbt07 = CategoryBagtype.create!(name:'Gym Bags')
cbt08 = CategoryBagtype.create!(name:'Holdalls')
cbt09 = CategoryBagtype.create!(name:'Makeup Bags')
cbt10 = CategoryBagtype.create!(name:'Satchels')
cbt11 = CategoryBagtype.create!(name:'Shoppers')
cbt12 = CategoryBagtype.create!(name:'Shoulder Bags')
cbt13 = CategoryBagtype.create!(name:'Totes')
cbt14 = CategoryBagtype.create!(name:'Bag Accessories')
cbt15 = CategoryBagtype.create!(name:'Zip Purses')

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

CategoryClothetype.delete_all
cct01 = CategoryClothetype.create!(name:'Coats & Jackets')
cct02 = CategoryClothetype.create!(name:'Dresses')
cct03 = CategoryClothetype.create!(name:'Hoodies & Sweatshirts')
cct04 = CategoryClothetype.create!(name:'Jeans & Denims')
cct05 = CategoryClothetype.create!(name:'Jumpers & Cardigans')
cct06 = CategoryClothetype.create!(name:'Jumpsuits & Playsuits')
cct07 = CategoryClothetype.create!(name:'Lingerie & Nightwear')
cct08 = CategoryClothetype.create!(name:'Loungewear')
cct09 = CategoryClothetype.create!(name:'Maternity')
cct10 = CategoryClothetype.create!(name:'Shirts & Blouses')
cct11 = CategoryClothetype.create!(name:'Shorts')
cct12 = CategoryClothetype.create!(name:'Skirts')
cct13 = CategoryClothetype.create!(name:'Socks & Tights')
cct14 = CategoryClothetype.create!(name:'Sportswear')
cct15 = CategoryClothetype.create!(name:'Swim & Beachwear')
cct16 = CategoryClothetype.create!(name:'Tops')
cct17 = CategoryClothetype.create!(name:'Trousers & Leggings')
cct18 = CategoryClothetype.create!(name:'T-shirts & Vests')
cct19 = CategoryClothetype.create!(name:'Workwear Suits')

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
cc19 = CategoryColour.create!(name:'Multi')
cc20 = CategoryColour.create!(name:'Stone')

CategoryCurrency.delete_all
cgc01 = CategoryCurrency.create!(name:'Cedis')
cgc02 = CategoryCurrency.create!(name:'Dollars')
cgc03 = CategoryCurrency.create!(name:'Pounds')

CategoryGeneralsize.delete_all
cgs01 = CategoryGeneralsize.create!(name:'XS')
cgs02 = CategoryGeneralsize.create!(name:'S')
cgs03 = CategoryGeneralsize.create!(name:'M')
cgs04 = CategoryGeneralsize.create!(name:'L')
cgs05 = CategoryGeneralsize.create!(name:'XL')

CategoryShoesize.delete_all
css01 = CategoryShoesize.create!(name:'UK 2')
css02 = CategoryShoesize.create!(name:'UK 3')
css03 = CategoryShoesize.create!(name:'UK 4')
css04 = CategoryShoesize.create!(name:'UK 5')
css05 = CategoryShoesize.create!(name:'UK 6')
css06 = CategoryShoesize.create!(name:'UK 7')
css07 = CategoryShoesize.create!(name:'UK 8')

CategoryShoetype.delete_all
cst01 = CategoryShoetype.create!(name:'Espadrilles')
cst02 = CategoryShoetype.create!(name:'Flat Boots')
cst03 = CategoryShoetype.create!(name:'Flat Sandals')
cst04 = CategoryShoetype.create!(name:'Flat Shoes')
cst05 = CategoryShoetype.create!(name:'Flat Flops')
cst06 = CategoryShoetype.create!(name:'Heeled Boots')
cst07 = CategoryShoetype.create!(name:'Heeled Sandals')
cst08 = CategoryShoetype.create!(name:'Heeled Shoes')
cst09 = CategoryShoetype.create!(name:'Loafers')
cst10 = CategoryShoetype.create!(name:'Pumps')
cst11 = CategoryShoetype.create!(name:'Shoe Accessories')
cst12 = CategoryShoetype.create!(name:'Slippers')
cst13 = CategoryShoetype.create!(name:'Trainers')
cst14 = CategoryShoetype.create!(name:'Wedges')

CategoryType.delete_all
ct01 = CategoryType.create!(name:'Clothes')
ct02 = CategoryType.create!(name:'Accessories')
ct03 = CategoryType.create!(name:'Shoes')
ct04 = CategoryType.create!(name:'Bags & Purses')
ct05 = CategoryType.create!(name:'Gifts')


