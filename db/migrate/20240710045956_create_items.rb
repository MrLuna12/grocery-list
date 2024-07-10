class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :list, null: false, foreign_key: true
      t.string :name
      t.integer :quantity
      t.boolean :purchased

      t.timestamps
    end
  end
end
