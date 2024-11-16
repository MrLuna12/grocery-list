class GroceryList < ApplicationRecord
  has_many :grocery_items
  validates :name, presence: true
end
