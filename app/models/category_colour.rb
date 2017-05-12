class CategoryColour < ApplicationRecord
  has_and_belongs_to_many :products

  def self.asc_order
    order('name ASC')
  end
end
