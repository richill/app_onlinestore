class Product < ApplicationRecord
  belongs_to :category_brand 
  belongs_to :category_colour 
end
