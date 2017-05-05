class RemoveNewFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :new, :boolean
  end
end
