# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GroceryList' do
  describe 'validations' do
    let(:grocery_list) { GroceryList.new }
    it 'throws validation error when name is blank' do
      expect(grocery_list).to_not be_valid
    end

    it 'validates the presence of name' do
      grocery_list.name = 'Grocery List'
      expect(grocery_list).to be_valid
    end
  end
end
