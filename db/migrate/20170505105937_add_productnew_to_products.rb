class AddProductnewToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_new, :boolean
  end
end
