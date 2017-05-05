class AddCategoryCurrencyidToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category_currency_id, :integer
  end
end
