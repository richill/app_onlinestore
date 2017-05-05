class CreateJoinTableProductCategoryShoesize < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :category_shoesizes do |t|
      # t.index [:product_id, :category_generalsize_id]
      # t.index [:category_generalsize_id, :product_id]
    end
  end
end
