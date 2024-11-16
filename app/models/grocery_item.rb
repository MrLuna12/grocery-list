class GroceryItem < ApplicationRecord
  belongs_to :grocery_list
  validates :name, presence: true
  validates :quantity, presence: true
end
