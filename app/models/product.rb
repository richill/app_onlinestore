class Product < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_products, use: :slugged

  mount_uploader :image, ImageUploader

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


  scope :clothes_dresses, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Dresses") }
  scope :bags_shoulder_bags, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Shoulder Bags") }
  scope :bags, -> { joins(:category_bagtype).where("category_bagtypes.name IN (?)", ["Across Body Bags", "Bum Bags", "Backpacks", "Clutches", "Coin Purses", "Folder Over Purses", "Gym Bags", "Holdalls", "Makeup Bags", "Satchels", "Shoppers", "Shoulder Bags", "Totes", "Bag Accessories", "Zip Purses"]) }
  scope :clothes, -> { joins(:category_clothetype).where("category_clothetypes.name IN (?)", ["Coats & Jackets", "Dresses", "Hoodies & Sweatshirts", "Jeans & Denims", "Jumpers & Cardigans", "Jumpsuits & Playsuits", "Lingerie & Nightwear", "Loungewear", "Maternity", "Shirts & Blouses", "Shorts", "Skirts", "Socks & Tights", "Sportswear", "Swim & Beachwear", "Tops", "Trousers & Leggings", "T-shirts & Vests", "Workwear Suits"]) }  

  scope :sales, -> {where(sale: true)}
  #products on sale

  def item_colurs
    item_selected_colours = Array.new
    selected_colours = self.category_colour
    selected_colours.each do |colour|
      item_selected_colours << colour.name
    end
    item_selected_colours
  end
end
