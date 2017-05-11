class CreateJoinTableProductCategoryColour < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :category_colours do |t|
      # t.index [:product_id, :category_colour_id]
      # t.index [:category_colour_id, :product_id]
    end
  end
end
