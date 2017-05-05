class CreateJoinTableProductCategoryClothesize < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :category_clothesizes do |t|
      # t.index [:product_id, :category_clothesize_id]
      # t.index [:category_clothesize_id, :product_id]
    end
  end
end
