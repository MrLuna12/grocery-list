require 'rails_helper'

RSpec.describe GroceryItem, type: :model do
  describe 'validations' do
    let(:grocery_list) { create(:grocery_list) }
    let(:grocery_item) { build(:grocery_item, name: nil, quantity: nil, grocery_list_id: nil) }

    it 'is invalid if name and items are blank' do
      expect(grocery_item).to_not be_valid
    end

    it 'validates the presence of name' do
      grocery_item.grocery_list_id = grocery_list.id
      grocery_item.name = 'apple'
      grocery_item.quantity = 1
      expect(grocery_item).to be_valid
    end
  end
end
