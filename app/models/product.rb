class Product < ApplicationRecord
  belongs_to :category_brand 
  belongs_to :category_colour 
  belongs_to :category_shoesize 
end
