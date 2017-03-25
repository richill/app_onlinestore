class CreateCategoryBagtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :category_bagtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
