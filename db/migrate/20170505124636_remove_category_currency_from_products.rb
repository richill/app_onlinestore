class RemoveCategoryCurrencyFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :category_currency, :integer
  end
end
