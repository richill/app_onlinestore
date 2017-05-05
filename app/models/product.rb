class Product < ApplicationRecord
  belongs_to :category_accessorytype, dependent: :destroy
  belongs_to :category_bagtype, dependent: :destroy 
  belongs_to :category_brand, dependent: :destroy 
  belongs_to :category_clothetype, dependent: :destroy 
  belongs_to :category_colour, dependent: :destroy 
  belongs_to :category_shoetype, dependent: :destroy
  belongs_to :category_type, dependent: :destroy
  belongs_to :category_currency, dependent: :destroy

  has_and_belongs_to_many :category_clothesize, dependent: :destroy
  has_and_belongs_to_many :category_generalsize, dependent: :destroy
  has_and_belongs_to_many :category_shoesize, dependent: :destroy
end
