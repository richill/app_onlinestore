class AddIdsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category_accessorytype_id, :integer
    add_column :products, :category_bagtype_id, :integer
    add_column :products, :category_brand_id, :integer
    add_column :products, :category_clothesize_id, :integer
    add_column :products, :category_clothetype_id, :integer
    add_column :products, :category_colour_id, :integer
    add_column :products, :category_generalsize_id, :integer
    add_column :products, :category_shoesize_id, :integer
    add_column :products, :category_shoetype_id, :integer
    add_column :products, :category_type_id, :integer
  end
end
