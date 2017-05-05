class CategoryClothesize < ApplicationRecord
  # has_many :products
  has_and_belongs_to_many :products
end
