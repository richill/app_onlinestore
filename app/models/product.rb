class Product < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_products, use: :slugged

  belongs_to :category_accessorytype, dependent: :destroy
  belongs_to :category_bagtype, dependent: :destroy 
  belongs_to :category_brand, dependent: :destroy 
  belongs_to :category_clothetype, dependent: :destroy 
  belongs_to :category_shoetype, dependent: :destroy
  belongs_to :category_type, dependent: :destroy
  belongs_to :category_currency, dependent: :destroy

  has_and_belongs_to_many :category_clothesize, dependent: :destroy
  has_and_belongs_to_many :category_generalsize, dependent: :destroy
  has_and_belongs_to_many :category_shoesize, dependent: :destroy
  has_and_belongs_to_many :category_colour, dependent: :destroy

  def slug_products
    [
      :title
    ]
  end


  def item_colurs
    #category_matchstatus [multiple]


    #current_user preferred relationship status
    item_selected_colours = Array.new
    selected_colours = self.category_colour
    selected_colours.each do |colour|
      item_selected_colours << colour.name
    end
    item_selected_colours


    # if current_user_preferred_relationshipstatus.include?(other_user_relationshipstatus) && other_user_preferred_relationshipstatus.include?(current_user_relationshipstatus)
    #   other_user
    # end
  end


end
