class AddCategoryCurrencyToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category_currency, :integer
  end
end
