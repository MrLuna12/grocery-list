class CreateGroceryItems < ActiveRecord::Migration[8.0]
  def change
    create_table :grocery_items do |t|
      t.string :name
      t.integer :quantity
      t.references :grocery_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
