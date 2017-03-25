class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :saleprice
      t.string :reference
      t.integer :stock
      t.boolean :sale

      t.timestamps
    end
  end
end
