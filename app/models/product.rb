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

  # -----CategoryClothetype-----
  scope :clothes, -> { joins(:category_clothetype).where("category_clothetypes.name IN (?)", ["Coats & Jackets", "Dresses", "Hoodies & Sweatshirts", "Jeans & Denims", "Jumpers & Cardigans", "Jumpsuits & Playsuits", "Lingerie & Nightwear", "Loungewear", "Maternity", "Shirts & Blouses", "Shorts", "Skirts", "Socks & Tights", "Sportswear", "Swim & Beachwear", "Tops", "Trousers & Leggings", "T-shirts & Vests", "Workwear Suits"]) }  
  scope :clothes_coats_jackets, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Coats & Jackets") }
  scope :clothes_dresses, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Dresses") }
  scope :clothes_hoodies_sweatshirts, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Hoodies & Sweatshirts") }
  scope :clothes_jeans_denims, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Jeans & Denims") }
  scope :clothes_jumpers_cardigans, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Jumpers & Cardigans") }
  scope :clothes_jumpsuits, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Jumpsuits & Playsuits") }
  scope :clothes_lingerie_nightwear, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Lingerie & Nightwear") }
  scope :clothes_loungewear, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Loungewear") }
  scope :clothes_maternity, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Maternity") }
  scope :clothes_shorts_blouses, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Shirts & Blouses") }
  scope :clothes_shorts, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Shorts") }
  scope :clothes_skirts, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Skirts") }
  scope :clothes_socks_tights, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Socks & Tights") }
  scope :clothes_sportswear, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Sportswear") }
  scope :clothes_swim_beachwear, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Swim & Beachwear") }
  scope :clothes_tops, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Tops") }
  scope :clothes_trousers_leggings, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Trousers & Leggings") }
  scope :clothes_shirts_vest, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "T-shirts & Vests") }
  scope :clothes_worksuits, ->() { joins(:category_clothetype).where('category_clothetypes.name' => "Workwear Suits") }

  # -----CategoryBagtype-----
  scope :bags, -> { joins(:category_bagtype).where("category_bagtypes.name IN (?)", ["Across Body Bags", "Bum Bags", "Backpacks", "Clutches", "Coin Purses", "Folder Over Purses", "Gym Bags", "Holdalls", "Makeup Bags", "Satchels", "Shoppers", "Shoulder Bags", "Totes", "Bag Accessories", "Zip Purses"]) }  
  scope :bags_across, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Across Body Bags") }
  scope :bags_bum, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Bum Bags") }
  scope :bags_backpacks, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Backpacks") }
  scope :bags_clutches, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Clutches") }
  scope :bags_coin_purses ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Coin Purses") }
  scope :bags_folder_purses, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Folder Over Purses") }
  scope :bags_gym, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Gym Bags") }
  scope :bags_holdalls, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Holdalls") }
  scope :bags_makeup, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Makeup Bags") }
  scope :bags_satchels, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Satchels") }
  scope :bags_shoppers, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Shoppers") }
  scope :bags_shoulder_bags, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Shoulder Bags") }
  scope :bags_totes, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Totes") }
  scope :bags_accessories, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Bag Accessories") }
  scope :bags_zip_purses, ->() { joins(:category_bagtype).where('category_bagtypes.name' => "Zip Purses") }

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
