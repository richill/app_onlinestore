class Product < ApplicationRecord
  belongs_to :category_brand 
  belongs_to :category_clothesizes
  belongs_to :category_clothetypes 
  belongs_to :category_colour 
  belongs_to :category_generalsize
  belongs_to :category_shoesize
  belongs_to :category_shoetype
  belongs_to :category_type
end
