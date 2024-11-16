require 'rails_helper'

RSpec.describe "grocery_items/show", type: :view do
  before(:each) do
    assign(:grocery_item, GroceryItem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
