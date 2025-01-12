class Item < ApplicationRecord
  belongs_to :grocery_list

  validates :name, :quantity, presence: true
  validates :name, uniqueness: { case_sensitive: false, scope: :grocery_list }
  validates :quantity, numericality: { greater_than: 0 }
end
