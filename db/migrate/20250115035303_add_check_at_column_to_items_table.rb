class AddCheckAtColumnToItemsTable < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :checked_at, :datetime
  end
end
